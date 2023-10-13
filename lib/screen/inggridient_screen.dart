import 'package:first_app/screen/item/inggridient_item.dart';
import 'package:first_app/services/fire_storage.dart';
import 'package:flutter/material.dart';


class InggridientScreen extends StatelessWidget {
  final String title;
  const InggridientScreen(this.title, {super.key});

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
            future: FireStorage.fetchJsonData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                // Use the JSON data in your app
                final jsonData = snapshot.data;
                return Padding(
                    padding: const EdgeInsets.all(12),
                    child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 400,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        children: jsonData!
                            .map((inggridient) => InggridientItem(
                                inggridient, 'https://picsum.photos/200/200'))
                            .toList()));
              }
            },
          ),
        ));
  }
}
