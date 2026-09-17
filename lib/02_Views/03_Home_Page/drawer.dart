// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 390,
            color: const Color.fromARGB(125, 60, 111, 162),

            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    print("Go to the Profile page...");
                  },
                  icon: Icon(Icons.account_circle, size: 30, color: Colors.amber),
                ),
                SizedBox(width: 20,),
                BoldText(text: "Osman Zafar",size: 20,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
