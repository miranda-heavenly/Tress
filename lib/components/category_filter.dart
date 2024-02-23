import 'package:flutter/material.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder:(context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: Chip(label: Text("Category")),
              );
            },),
        );
  }
}