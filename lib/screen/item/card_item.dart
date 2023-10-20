
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String? title;
  final String? urlImage;
  const CardItem({Key? key, required this.onPressed, this.urlImage, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    urlImage ?? "",
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 220,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20
                    ),
                    child: Text(title ?? '',
                    style: Theme.of(context).textTheme.titleLarge,
                    softWrap: true,
                    overflow: TextOverflow.fade),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void selectRecipes() {}
}
