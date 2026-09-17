 // ignore_for_file: must_be_immutable, dead_code, sort_child_properties_last, unused_import

import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

 
 
class Myform extends StatelessWidget {
   Myform({super.key,required this.label});

  String label;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(label),
          hintText: "Enter $label",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),

        ),
      ),
    );
  }
} 
 