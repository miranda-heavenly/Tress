// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tress/widgets/app_button.dart';
import 'package:tress/widgets/app_text.dart';
import 'package:tress/widgets/app_text_heading.dart';
import 'package:tress/widgets/app_text_small.dart';
import 'package:tress/widgets/page_title.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PageTitle(text: "Product Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61aaXjCMcGL._SL1001_.jpg",
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PageTitle(text: 'Short Curly Hair'),
                  SizedBox(
                    height: 10,
                  ),
                  AppText(text: "Udu short curly human hair wigs for black women dark brown human hair curly wigs non lace glueless wigs human hair side part wigs (2#)"),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextHeading(text: 'GHS: 890'),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ("Enter card details"),
                    ),
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  AppButton(onPressed: () {}, text: "Buy Now")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
