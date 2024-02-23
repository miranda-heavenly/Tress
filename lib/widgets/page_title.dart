// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String text;
  Color color;
  double size;
  FontWeight weight;
  PageTitle({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.size = 16,
    this.weight = FontWeight.bold
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
