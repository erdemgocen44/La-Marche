import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale

  final List _shopItems = [
//itemName, itemPrice,imagePath et color
    ['Avocat', '4.50', 'assets/images/avocat.png', Colors.greenAccent],
    ['Bananas', '2.50', 'assets/images/bananas.png', Colors.yellowAccent],
    ['Poulet', '14.00', 'assets/images/poulet.png', Colors.brown],
    ['Eau', '0.50', 'assets/images/eau.png', Colors.blueAccent],
  ];
}
