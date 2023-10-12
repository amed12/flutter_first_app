import "package:first_app/recipes_screen.dart";
import "package:flutter/material.dart";

class InggridientItem extends StatelessWidget {
  final String inggridient;
  final String imageUrl;
  const InggridientItem(this.inggridient,this.imageUrl, {super.key});

  void generateRecipes(BuildContext ctx){
    Navigator.of(ctx).pushNamed('/recipes', arguments: {
      'inggridient': inggridient
    });
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
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Image.network(imageUrl, height: 100),
            Text(
              inggridient,
              style: Theme.of(context).textTheme.titleLarge,
            )
          ]),
        ),
      ),
    );
  }
}
