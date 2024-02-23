// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tress/components/bottom_nav_bar.dart';
import 'package:tress/pages/cart_page.dart';
import 'package:tress/pages/product_detail_page.dart';
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
    CartPage(),
    ProductDetailPage()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder:(context) => IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            }, 
            icon: Icon(
              Icons.menu,
              color: Colors.black,)),
        ),
        title: Text("Tress Hair Store", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.logout),
          )
          ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [    
             Column(
               children: [
                //logo
                 DrawerHeader(
                  child: Image.asset("images/logo crop.png",
                             color: Colors.white,
                             width: 150,)),
                             
                             //drawer elements
                            Padding(
                 padding: const EdgeInsets.only(left: 35, top: 20, bottom: 20),
                 child: ListTile(
                  leading: Icon(Icons.home_outlined, color: Colors.white,),
                  title: Text("Home",
                  style: TextStyle(color: Colors.white,),),
                 ),
                            ),
                             Padding(
                 padding: const EdgeInsets.only(left: 35,  bottom: 20),
                 child: ListTile(
                  leading: Icon(Icons.info_outline, color: Colors.white,),
                  title: Text("About",
                  style: TextStyle(color: Colors.white,),),
                 ),
                            ),
                 Padding(
                 padding: const EdgeInsets.only(left: 35,  bottom: 20),
                 child: ListTile(
                  leading: Icon(Icons.help_center_outlined, color: Colors.white,),
                  title: Text("Help",
                  style: TextStyle(color: Colors.white,),),
                 ),
                            ),
               ],
             ),
             Padding(
                 padding: const EdgeInsets.only(left: 35,  bottom: 100),
                 child: ListTile(
                  leading: Icon(Icons.logout_outlined, color: Colors.white,),
                  title: Text("Log out",
                  style: TextStyle(color: Colors.white,),),
                 ),
                            ),
           
          ],
        ),
      ),

      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}