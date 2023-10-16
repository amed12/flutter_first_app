import 'package:flutter/material.dart';

class RecipesItem extends StatelessWidget {
  final int? id;
  final String? image;
  final int? likes;
  final String? title;
  const RecipesItem({Key? key, this.id, this.image, this.likes, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectRecipes,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.network(
                image ?? "",
                height: 250,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }

  void selectRecipes() {}
}
