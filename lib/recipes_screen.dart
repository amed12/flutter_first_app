import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
const RecipesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes by Inggridient',
        style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Container(),
    );
  }
}