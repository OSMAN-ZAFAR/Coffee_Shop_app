// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/02_Views/04_Details_View_Page/bottomHalfBeanPage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'container_1.dart';
import 'package:coffee_shop_app/02_Views/06_Payment_Page/paymentpage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 340,

      decoration: BoxDecoration(
        color: const Color.fromARGB(218, 60, 111, 162),
        borderRadius: BorderRadius.circular(15),
      ),

      child: Row(
        children: [
          // ........... Image Container....................
          
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/image2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // ........... Info Container....................
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bold Text.......
                  BoldText(text: "Cappuccino", color: Colors.white),

                  // Light Text.......
                  LightText(
                    text: "with streamed Milk",
                    color: const Color.fromARGB(255, 212, 211, 211),
                    size: 13,
                  ),

                  SizedBox(height: 10),
                  // 1st Row .......
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 30, 29, 29),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Center(
                          child: LightText(
                            text: "M",
                            color: Colors.white,
                            size: 17,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      // ........... Dollar Icon  ....................
                      Icon(
                        Icons.attach_money_outlined,
                        color: const Color.fromARGB(255, 247, 184, 59),
                        size: 25,
                      ),

                      // ........... Price  ....................
                      LightText(text: "6.20", color: Colors.white, size: 18),
                    ],
                  ),
                  SizedBox(height: 3),

                  // 2nd Row .......
                  Row(
                    children: [
                  // ........... Decrement  Button ....................
                      Container(
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 145, 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: BoldText(
                            text: "-",
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),

                  // ........... Produnt Amount  ....................
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 21, 21, 21),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Center(
                            child: LightText(
                              text: "1",
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                        ),
                      ),

                  // ........... Increment Button  ....................
                      Container(
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 145, 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: BoldText(
                            text: "+",
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
