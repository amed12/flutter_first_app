import '../models/recipes/recipes.dart';
import '../screen/item/recipes_item.dart';
import '../services/spoonacular_food_api.dart';
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
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            // Use the JSON data in your app
            final jsonData = snapshot.data;
            return Padding(
                padding: const EdgeInsets.all(12),
                child: ListView.builder(
                  itemBuilder: (context, index) => RecipesItem(
                    id: jsonData?[index].id,
                    title: jsonData?[index].title,
                    likes: jsonData?[index].likes,
                    image: jsonData?[index].image,
                  ),
                  itemCount: jsonData?.length,
                ));
          }
        },
      ),
    );
  }
}
