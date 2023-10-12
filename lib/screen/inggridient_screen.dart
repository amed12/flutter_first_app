import 'package:first_app/screen/item/inggridient_item.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'dart:convert';
import 'package:http/http.dart' as http;

class InggridientScreen extends StatelessWidget {
  final String title;
  const InggridientScreen(this.title, {super.key});

  Future<List<dynamic>> fetchJsonData() async {
    try {
      final storage = firebase_storage.FirebaseStorage.instance;
      final ref = storage.ref().child('en_ingridient.json');
      final url = await ref.getDownloadURL();

      // You can fetch the JSON data using the 'http' package or any other method
      // This example uses the 'http' package for simplicity

      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        // Parse the JSON data and return it as a Map<String, dynamic>
        return jsonData;
      } else {
        // Handle HTTP request error
        throw Exception('Failed to load JSON data');
      }
    } catch (e) {
      // Handle any errors that occur during the process
      print('Error downloading or parsing file: $e');
      // Return an empty Map or an error indicator as needed
      return [];
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: FutureBuilder<List<dynamic>>(
            future: fetchJsonData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                // Use the JSON data in your app
                final jsonData = snapshot.data;
                return Padding(padding: const EdgeInsets.all(12),
                child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 400,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    children: jsonData!
                        .map((inggridient) => InggridientItem(inggridient,'https://picsum.photos/200/200'))
                        .toList()));
              }
            },
          ),
        ));
  }
}
