// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tress/widgets/app_text.dart';
import 'package:tress/widgets/app_text_heading.dart';
import 'package:tress/widgets/app_text_small.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String offerTag;
  final Function() onTap;
  const ProductCard({
    Key? key,
    required this.name,
    required this.price,
    required this.offerTag,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {
        
        onTap();
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.network(
                "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61aaXjCMcGL._SL1001_.jpg",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,   
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextHeading(text: name, color: Colors.black,),
                  SizedBox(height: 10,),
              AppText(text: 'GHS: $price' as String),
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8),
              
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: AppTextSmall(text: offerTag, color: Colors.white,),
                ),
              )
              
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
