import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marche/model/cart_model.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CartPage(),
          ),
        ),
        backgroundColor: Colors.black45,
        child: const Icon(
          Icons.shopping_bag_outlined,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSized(
              50,
            ),

            //bonjour!!
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: CustomText(
                'Bonjour!',
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),

            CustomSized(
              5,
            ),

            //Commandons des articles frais pour vous
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: CustomText(
                'Commandons des articles frais pour vous',
                style: GoogleFonts.nerkoOne(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            CustomSized(
              25,
            ),

            //divider

            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Divider(
                thickness: 4,
              ),
            ),

            CustomSized(
              25,
            ),

            //fresh quelquan + grid

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: CustomText(
                'Fresh quelquan',
                style: const TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) => GridView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.35,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Text CustomText(String ecrit,
      {required TextStyle style, required TextAlign textAlign}) {
    return Text(
      ecrit,
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox CustomSized(double ebat) {
    return SizedBox(
      height: ebat,
    );
  }
}
