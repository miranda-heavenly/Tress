// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tress/components/category_filter.dart';
import 'package:tress/components/products/product_grid.dart';
import 'package:tress/components/dropdown/dropdown_menu.dart';
import 'package:tress/components/dropdown/multiselect_dropdown.dart';
import 'package:tress/components/search_widget.dart';

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
      SearchWidget(),
      
      SizedBox(height: 8,),

      //Sort
      Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          Flexible(
            child: MultiSelectDropdown(
            items: ['Item1', 'Item2', 'Item3'], 
            onSelectionChange: (
              selectedItems
              ) {  },

            )
          ),
          Flexible(
            child: DropDownMenu(
            defaultText: "Sort Items", 
            items: ["Low to high", "High to low"], 
            onSelected: (selected){
            }),
          ),           
        ],
      ),
    ),

    //Categories Filter
      CategoryFilter(),

      //Products
      ProductGrid()

        
      ],

    );
}}