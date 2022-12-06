import 'package:flutter/material.dart';
import 'package:marche/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ma Carte',
        ),
      ),
      body: Consumer<CartModel>(builder: (context, (context, value, child) {
        
      return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('Items'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
