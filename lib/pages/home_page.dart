import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 50,
            ),
            //bonjour!!
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Text(
                'Bonjour!',
              ),
            ),
            //Commandons des articles frais pour vous
            Text(
              'Commandons des articles frais pour vous',
            ),
            //divider

            //fresh quelquan + grid
          ],
        ),
      ),
    );
  }
}
