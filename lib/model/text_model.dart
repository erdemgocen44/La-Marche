import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String yazi;
  final double size;
  final TextStyle;
  final FontWeight;
  final TextAlign;

  const CustomText(
      {super.key,
      required this.yazi,
      required this.size,
      this.TextAlign,
      this.FontWeight, 
      this.TextStyle});
  @override
  Widget build(BuildContext context) {
    return Text(
      yazi,
      style: TextStyle(fontSize: size),
    );
  }
}
