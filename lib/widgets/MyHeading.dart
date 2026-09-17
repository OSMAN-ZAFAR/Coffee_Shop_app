 // ignore_for_file: must_be_immutable, dead_code, sort_child_properties_last, unused_import

import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class Myheading extends StatelessWidget {
   Myheading({super.key, required this.title, required this.icon});

   String title;
   IconData icon;


  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(icon),
                          SizedBox(width: 5),
                          LightText(
                            text: title,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                    ) ;
  }
}