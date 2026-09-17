import 'package:coffee_shop_app/02_Views/01_Intro_Page/Intropage.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: Intropage(),
      debugShowCheckedModeBanner: false,
    );
  }
}