import 'package:flutter/material.dart';
import 'package:tress/components/bottom_nav_bar.dart';
import 'package:tress/pages/cart_page.dart';
import 'package:tress/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //Pages display
  final List<Widget> _pages = [
    ShopPage(),
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}