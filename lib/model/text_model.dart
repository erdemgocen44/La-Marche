import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String yazi;
  final double size;
  final Color renk;
  final FontWeight;
  final TextAlign;

  const CustomText({
    super.key,
    required this.yazi,
    required this.size,
    required this.renk,
    this.TextAlign,
    this.FontWeight,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      yazi,
      style: TextStyle(fontSize: size),
    );
  }
}
