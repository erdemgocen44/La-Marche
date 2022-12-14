import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marche/model/sizedbox_model.dart';
import 'package:marche/model/text_model.dart';

import 'home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 160,
                left: 80,
                right: 80,
                bottom: 40,
              ),
              child: Image.asset(
                'assets/images/avocat.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Nous livrons l'épicerie à votre porte",
              style: GoogleFonts.nerkoOne(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const CustomSizedBox(ebat: 24),
          const CustomText(
            yazi: 'Produits frais tous les jours',
            size: 16,
            renk: Colors.grey,
          ),
          const Spacer(),

          //Commerce le button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple,
              ),
              child: const Padding(
                padding: EdgeInsets.all(25),
                child: CustomText(
                  yazi: 'Commencer!!',
                  size: 15,
                  renk: Colors.white,
                  FontWeight: FontWeight.bold,
                  TextAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
