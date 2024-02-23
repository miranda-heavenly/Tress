// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppTextSmall extends StatelessWidget {
  final String text;
  Color color;
  double size;
  FontWeight weight;
  AppTextSmall({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.size = 10,
    this.weight = FontWeight.normal
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
