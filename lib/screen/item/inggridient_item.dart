import 'package:first_app/screen/routes.dart';
import "package:flutter/material.dart";

class InggridientItem extends StatelessWidget {
  final String inggridient;
  final String imageUrl;
  const InggridientItem(this.inggridient, this.imageUrl, {super.key});

  void generateRecipes(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(Routes.recipesScreenRoute,
        arguments: {Routes.recipesScreenArgs: inggridient});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => generateRecipes(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(children: [
            Image.network(imageUrl, height: 80),
            Text(
              inggridient,
              style: Theme.of(context).textTheme.labelLarge,
            )
          ]),
        ),
      ),
    );
  }
}
