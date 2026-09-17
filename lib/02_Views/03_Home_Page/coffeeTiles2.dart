// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/Data/coffee_data.dart';

import 'package:flutter/material.dart';

class Coffeetiles2 extends StatelessWidget {
  Coffeetiles2({super.key});


  @override
  Widget build(BuildContext context) {
    return // List of  bean containers......
    Container(
      height: 270,
      width: double.maxFinite,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: coffees.length,
        itemBuilder: (context, index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                MaterialPageRoute(
                builder: (context) => Beanpage(
                coffee: coffees[index],
                       ),
                 ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  // main container.......
                  color: const Color.fromARGB(125, 60, 111, 162),
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.only(bottom: 25),
                height: 220,
                width: 200,

                child: Stack(
                  // First stack........
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Stack(
                        children: [
                          //Image container......
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),

                              image: DecorationImage(
                                image: AssetImage(coffees[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            height: 150,
                            width: 190,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: LightText(
                              text: "5 Coffee Beans You\n Must Try!",
                              size: 20,
                              color: Colors.white,
                            ),
                          ),

                          // Bold Text.....
                          Padding(
                            padding: const EdgeInsets.only(top: 160),
                            child: BoldText(
                              text:coffees[index].name,
                              color: Colors.white,
                            ),
                          ),
                          // Light Text.....
                          Padding(
                            padding: const EdgeInsets.only(top: 190),
                            child: LightText(
                              text: 'With Oat Milk',
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
