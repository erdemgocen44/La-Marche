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

//list of card

  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

//add item to cart

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

//remove item from  cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();

//calculatee total price
    String calculateTotal() {
      double totalPrice = 0;

      for (var i = 0; i < _cartItems.length; i++) {
        totalPrice += double.parse(_cartItems[i][1]);
      }
      return totalPrice.toStringAsFixed(2);
    }
  }
}
 