import "package:flutter/material.dart";

class InggridientItem extends StatelessWidget {
  final String inggridient;
  final String imageUrl;
  const InggridientItem(this.inggridient,this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Image.network(imageUrl, height: 100),
          Text(
            inggridient,
            style: const TextTheme().labelLarge,
          )
        ]),
      ),
    );
  }
}
