import 'package:first_app/screen/item/card_item.dart';
import 'package:first_app/screen/routes.dart';
import 'package:first_app/services/fire_storage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [];

  late TextEditingController searchController;
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    filteredItems = List.of(items);
  }

  void filterSearchResults(String query) {
    query = query.toLowerCase();
    setState(() {
      filteredItems =
          items.where((item) => item.toLowerCase().contains(query)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: searchController,
              onChanged: filterSearchResults,
              decoration: const InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          FutureBuilder<List<dynamic>>(
            future: FireStorage.fetchJsonData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                // Use the JSON data in your app
                final jsonData = snapshot.data;
                items = jsonData!
                    .whereType<String>() // Filter out non-String items
                    .map((item) => item) // Cast each item to String
                    .toList();
                return Expanded(
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      final data = filteredItems[index];
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
                    itemCount: filteredItems.length,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
