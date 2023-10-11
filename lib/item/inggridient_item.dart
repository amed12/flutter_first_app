import "package:flutter/material.dart";

class InggridientItem extends StatelessWidget {

  final String inggridient;
  const InggridientItem(this.inggridient, {super.key});
  
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.orange.withOpacity(0.7),
          Colors.orange
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Text(inggridient),

    );
  }
}