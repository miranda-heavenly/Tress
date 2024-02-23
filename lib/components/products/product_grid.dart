// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tress/components/products/product_card.dart';
import 'package:tress/pages/product_detail_page.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8),
          itemBuilder: (context, index) {
            return ProductCard(
              name: 'Short Curly Hair',
              price: 891,
              offerTag: '20% Off',
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder:(context) {
                  return ProductDetailPage();
                },));
              },
            );
          },
        ),
      ),
    );
  }
}
