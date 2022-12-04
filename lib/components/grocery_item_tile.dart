// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  const GroceryItemTile({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color[100],
      ),
      child: Column(
        children: [
          //Photo
          Image.asset(
            imagePath,
            height: MediaQuery.of(context).size.height * 0.08,
          ),

          //item prenom

          //prix + button
        ],
      ),
    );
  }
}
