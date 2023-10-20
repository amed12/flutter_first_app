import 'package:first_app/screen/item/card_item.dart';
import 'package:first_app/screen/routes.dart';
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
                return ListView.builder(
                  itemBuilder: ((context, index) {
                    final data = jsonData?[index] as String;
                    return CardItem(
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                            Routes.recipesScreenRoute,
                            arguments: {Routes.recipesScreenArgs: data});
                      },
                      title: data,
                      urlImage: 'https://picsum.photos/200/300',
                    );
                  }),
                  itemCount: jsonData?.length,
                );
              }
            },
          ),
        ));
  }
}
