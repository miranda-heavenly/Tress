// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tress/widgets/app_text.dart';
import 'package:tress/widgets/app_text_heading.dart';
import 'package:tress/widgets/app_text_small.dart';
import 'package:tress/widgets/page_title.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
                         
             //logo
            Image.asset("images/logo crop.png"),
             SizedBox(height: 50,),
           
            //title
            AppTextHeading(text:"More than just hair, it's you!",
            ),
           SizedBox(height: 10,),
           
            //subtitle
             AppTextHeading(text: "Luxurious tresses for the discerning woman.",
             weight: FontWeight.normal,
              color: Colors.grey,
            ),
           SizedBox(height: 50,),

           PageTitle(text: "Create your account!"), 
            SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_4_outlined),
              hintText: "Your Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),),
             SizedBox(height: 10,),
            TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone_android),
              hintText: "Mobile Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),),

             SizedBox(height: 10,),
             TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),),

             SizedBox(height: 10,),
            
            //CTA button
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/login"),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple[900],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text("Register",
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ),
            )
           
           ,SizedBox(height: 50,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            AppText(text: "Already have an account?", weight: FontWeight.bold,),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, "/login");
              }, 
              child: AppText(text: "Login", color: const Color.fromRGBO(74, 20, 140, 1), weight: FontWeight.bold,)
              )
           ],)
           ],
          ),
        ),
      ),
    
    );
  }
}
