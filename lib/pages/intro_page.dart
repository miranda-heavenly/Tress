// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
                         
             //logo
            Image.asset("images/logo crop.png"),
             SizedBox(height: 50,),
           
            //title
            Text("More than just hair, it's you!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
           SizedBox(height: 10,),
           
            //subtitle
             Text("Luxurious tresses for the discerning woman.",
             textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.grey,
            ),),
           SizedBox(height: 50,),
            
            //CTA button
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/home"),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text("Shop Now",
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ),
            )
           ],
          ),
        ),
      ),
    );
  }
}