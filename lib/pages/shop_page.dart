// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tress/shared_widgets/dropdown_menu.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
           
        //Search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search", style: TextStyle(
                    color: Colors.grey,
                  ),),
                  Icon(Icons.search, color: Colors.grey,)
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 8,),

        //Message
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 20),
        //   child: Text("Find your perfect tress, embrace your confidence.",
        //   style: TextStyle(color: Colors.grey[700]),),
        // ),

         //Sort
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
             Flexible(
               child: DropDownMenu(
                defaultText: "Sort", 
                items: ["Low to high", "High to low"], 
                onSelected: (selected){
                }),
             ),
              Flexible(
               child: DropDownMenu(
                defaultText: "Sort", 
                items: ["Low to high", "High to low"], 
                onSelected: (selected){
                }),
             )
            ],
          ),
        ),





        //Categories
         Container(
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
        ),

        
      ],

    );
}}