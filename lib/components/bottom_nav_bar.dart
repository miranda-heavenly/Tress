// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar(
    {super.key,
    required this.onTabChange
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color:Colors.grey[500] ,
        activeColor: Colors.grey[700],
        tabActiveBorder:Border.all(color: Colors.white),
        tabBackgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange:(value) => onTabChange!(value), 

          tabs: [
            GButton(
              icon: Icons.home,
              text: "Shop",
              ),
             GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
              ), 
          ]
          ),
    );
    
  }
}