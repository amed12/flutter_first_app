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
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 4, right: 4),
      child: InkWell(
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
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 2))
              ]),
          child: Column(children: [
            Image.network(imageUrl, height: 80),
            Text(
              inggridient,
              style: Theme.of(context).textTheme.labelLarge,
              overflow: TextOverflow.fade,
              softWrap: true,
            )
          ]),
        ),
      ),
    );
  }
}
