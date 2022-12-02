import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: CustomText('Fresh quelquan',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center)),
            Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GroceryItemTile();
                    }))
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
