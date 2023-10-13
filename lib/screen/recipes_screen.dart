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
      body: Container(),
    );
  }
}
