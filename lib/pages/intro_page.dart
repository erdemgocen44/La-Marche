import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Nous livrons l'épicerie à votre porte",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Text('Produits frais tous les jours'),
          Container(
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
