import 'package:flutter/material.dart';
import 'package:tress/pages/home_page.dart';
import 'package:tress/pages/intro_page.dart';
import 'package:tress/pages/login_page.dart';
import 'package:tress/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: IntroPage(),
      initialRoute: "/intro",
      routes:<String, WidgetBuilder>{
        "/home":(context) => const HomePage(),
        "/intro":(context) => const IntroPage(),
        "/register":(context) => const RegisterPage(),
        "/login":(context) => const LoginPage()
      }
      ,
    );
  }
}
