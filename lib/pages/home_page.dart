import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marche/model/cart_model.dart';
import 'package:provider/provider.dart';
import '../components/grocery_item_tile.dart';
import '../model/sizedbox_model.dart';
import '../model/text_model.dart';
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomSizedBox(
              ebat: 40,
            ),

            //bonjour!!
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: CustomText(
                size: 16,
                yazi: 'Bonjour',
                renk: Colors.black,
                TextAlign: TextAlign.center,
                FontWeight: FontWeight.bold,
              ),
            ),

            const CustomSizedBox(
              ebat: 5,
            ),

            //Commandons des articles frais pour vous
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Text(
                'Commandons des articles frais pour vous',
                style: GoogleFonts.nerkoOne(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const CustomSizedBox(
              ebat: 20,
            ),

            //divider

            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Divider(
                thickness: 2,
              ),
            ),

            const CustomSizedBox(
              ebat: 20,
            ),

            //fresh quelquan + grid

            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: CustomText(
                yazi: 'Fresh quelquan',
                size: 16,
                renk: Colors.black,
                TextAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) => GridView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.30,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () {
                        Provider.of<CartModel>(context, listen: false)
                            .addItemToCart(index);
                      },
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
}
