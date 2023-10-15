import 'package:first_app/models/recipes/recipes.dart';
import 'package:first_app/screen/item/inggridient_item.dart';
import 'package:first_app/services/spoonacular_food_api.dart';
import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final titleInggridient = routeArgs['inggridient'] ?? 'Recipes';
    return Scaffold(
      appBar: AppBar(
        title: Text(titleInggridient,
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: FutureBuilder<List<Recipes>>(
            future: SpoonacularFoodApi.loadRecipesByInggridient(titleInggridient),
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
                                inggridient.title ?? "", 'https://picsum.photos/200/200'))
                            .toList()));
              }
            },
          ),
    );
  }
}
