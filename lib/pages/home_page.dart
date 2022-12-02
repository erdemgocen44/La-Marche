import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            //bonjour!!
            Text('Bonjour!'),
            //Allons-y j'achete un quelqun

            //divider

            //fresh quelquan + grid
          ],
        ),
      ),
    );
  }
}
