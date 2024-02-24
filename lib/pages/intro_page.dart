// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tress/widgets/app_button.dart';
import 'package:tress/widgets/app_text_heading.dart';

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
             AppTextHeading(text:"More than just hair, it's you!", size: 18,
            ),
           SizedBox(height: 10,),
           
            //subtitle
             AppTextHeading(text: "Luxurious tresses for the discerning woman.",
              color:  Colors.grey,
            ),
           SizedBox(height: 50,),
            
            //CTA button
            AppButton(
              onPressed: (){
                Navigator.pushNamed(context, "/register");
              }, 
              text: "Start Shopping")

            // GestureDetector(
            //   onTap: () => Navigator.pushNamed(context, "/register"),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color: Colors.grey[900],
            //       borderRadius: BorderRadius.circular(12)
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.all(20),
            //       child: Center(
            //         child: Text("Start Shopping",
            //         style: TextStyle(
            //           color: Colors.white
            //         ),),
            //       ),
            //     ),
            //   ),
            // )
           
           
           ],
          ),
        ),
      ),
    );
  }
}