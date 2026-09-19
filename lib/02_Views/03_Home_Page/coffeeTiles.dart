// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/Data/coffee_data.dart';
import 'package:flutter/material.dart';

class Coffeetiles extends StatelessWidget {
  Coffeetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return // List of  coffee containers......
    Container(
      height: 270,
      width: double.maxFinite,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coffees.length,
        itemBuilder: (context, index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Beanpage(coffee: coffees[index]),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  // main container.......
                  color: const Color.fromARGB(125, 60, 111, 162),

                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.only(right: 25),
                height: 270,
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
                            width: 210,
                          ),

                          // ranking container.....
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  // star icon......
                                  padding: EdgeInsetsGeometry.only(left: 1),
                                  child: Icon(
                                    Icons.star,
                                    color: const Color.fromARGB(
                                      255,
                                      251,
                                      179,
                                      34,
                                    ),
                                  ),
                                ),

                                SizedBox(width: 5),

                                // Ranking text......
                                LightText(
                                  text: coffees[index].rating.toString(),
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),

                            margin: EdgeInsets.only(left: 100),
                            height: 28,
                            width: 75,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(125, 60, 111, 162),

                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                          ),

                          // Bold Text.....
                          Padding(
                            padding: const EdgeInsets.only(top: 160),
                            child: BoldText(
                              text: coffees[index].name,
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

                          // Last Row......
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 215),
                              child: Row(
                                children: [
                                  // Dollar Icon......
                                  Icon(
                                    Icons.attach_money_outlined,
                                    color: const Color.fromARGB(
                                      255,
                                      241,
                                      163,
                                      99,
                                    ),
                                    size: 25,
                                  ),

                                  // price text...
                                  BoldText(
                                    text: coffees[index].price.toString(),
                                    color: Colors.white,
                                  ),

                                  SizedBox(width: 60),

                                  // plus Button...
                                  Container(
                                    child: Icon(Icons.add),
                                    height: 70,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        241,
                                        163,
                                        99,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              ),
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
