// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  final double ebat;
  const CustomSizedBox({
    Key? key,
    required this.ebat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ebat,
    );
  }
}
