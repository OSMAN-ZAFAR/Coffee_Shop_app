// ignore_for_file: avoid_print, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/widgets/MyContainer.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //-------------------------------- Profile Continer -------------------------------
          Container(
            height: 150,
            width: 390,
            color: const Color.fromARGB(125, 60, 111, 162),

            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          print("Go to the Profile page...");
                        },
                        icon: Icon(
                          Icons.account_circle,
                          size: 50,
                          color: const Color.fromARGB(255, 241, 163, 99),
                        ),
                      ),
                      SizedBox(width: 5),

                      BoldText(text: "Osman Zafar", size: 25),
                    ],
                  ),

                  LightText(
                    text: "zafarsmindset@gmail.com",
                    size: 13,
                    color: const Color.fromARGB(255, 241, 163, 99),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 90),


          //-------------------------------- Home Continer -------------------------------
          Mycontainer(icon: Icons.home, tittle: "Home"),
          SizedBox(height: 5),


          //-------------------------------- Coffee Menue Continer -------------------------------
          Mycontainer(icon: Icons.coffee_sharp, tittle: "Coffee Menue"),
          SizedBox(height: 5),


          //-------------------------------- My Order Continer -------------------------------
          Mycontainer(icon: Icons.receipt_long, tittle: "My Order"),
          SizedBox(height: 5),

          
          //-------------------------------- Setting Continer -------------------------------
          Mycontainer(icon: Icons.settings, tittle: "Settings"),
          SizedBox(height: 5),

          
          //-------------------------------- About Us Continer -------------------------------
          Mycontainer(icon: Icons.info_outline, tittle: "About Us"),
          SizedBox(height: 5),

          
          //-------------------------------- Help & Support Continer -------------------------------
          Mycontainer(icon: Icons.help_outline_rounded, tittle: " Help & Support"),
          SizedBox(height: 150),

          
          //-------------------------------- Log Out Continer -------------------------------
          Mycontainer(icon: Icons.logout, tittle: "Log Out"),
        ],
      ),
    );
  }
}
