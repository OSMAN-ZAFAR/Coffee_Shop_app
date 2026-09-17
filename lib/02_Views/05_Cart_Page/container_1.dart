// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/02_Views/04_Details_View_Page/bottomHalfBeanPage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/02_Views/06_Payment_Page/paymentpage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 340,
      decoration: BoxDecoration(
        color: const Color.fromARGB(218, 60, 111, 162),
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        children: [
          // ........... 1st Row ....................
          Padding(
            padding: const EdgeInsets.all(16.0),

            child: Row(
              children: [
                // ........... Image Container....................
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/image1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),

                // ........... Text Container....................
                Container(
                  height: 100,
                  width: 180,

                  child: Column(
                    children: [
                      // ........... Bold Text ....................
                      Padding(
                        padding: const EdgeInsets.only(right: 55),
                        child: BoldText(
                          text: "Cappussino",
                          color: Colors.white,
                        ),
                      ),

                      // ........... Light Text ....................
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: LightText(
                          text: "with steamed Milk",
                          color: const Color.fromARGB(255, 200, 198, 198),
                          size: 15,
                        ),
                      ),

                      // ........... Last container  ....................
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 44, 44, 44),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Center(
                          child: LightText(
                            text: "Medium Roasted",
                            color: Colors.white,
                            size: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ........... 2nd Row ....................
          Row(
            children: [
              // ........... S Container ....................
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 44, 44),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Center(
                    child: LightText(text: "S", color: Colors.white, size: 17),
                  ),
                ),
              ),

              // ........... Dollar Icon  ....................
              Icon(
                Icons.attach_money_outlined,
                color: const Color.fromARGB(255, 247, 184, 59),
                size: 25,
              ),

              // ........... Price  ....................
              LightText(text: "4.20", color: Colors.white, size: 18),

              SizedBox(width: 10),

              // ........... Decrement  Button ....................
              Container(
                height: 35,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 145, 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: BoldText(text: "-", color: Colors.white, size: 25),
                ),
              ),

              // ........... Produnt Amount  ....................
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 44, 44),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Center(
                    child: LightText(text: "1", color: Colors.white, size: 17),
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
                  child: BoldText(text: "+", color: Colors.white, size: 25),
                ),
              ),
            ],
          ),

          // ........... 3rd Row ....................
          Row(
            children: [
              // ........... M Container ....................
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 44, 44),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Center(
                    child: LightText(text: "M", color: Colors.white, size: 17),
                  ),
                ),
              ),

              // ........... Dollar Icon  ....................
              Icon(
                Icons.attach_money_outlined,
                color: const Color.fromARGB(255, 247, 184, 59),
                size: 25,
              ),

              // ........... Price  ....................
              LightText(text: "4.20", color: Colors.white, size: 18),

              SizedBox(width: 10),

              // ........... Decrement  Button ....................
              Container(
                height: 35,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 145, 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: BoldText(text: "-", color: Colors.white, size: 25),
                ),
              ),

              // ........... Produnt Amount  ....................
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 44, 44),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Center(
                    child: LightText(text: "1", color: Colors.white, size: 17),
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
                  child: BoldText(text: "+", color: Colors.white, size: 25),
                ),
              ),
            ],
          ),

          // ........... 4th Row ....................
          Row(
            children: [
              // ........... L Container ....................
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 44, 44),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Center(
                    child: LightText(text: "L", color: Colors.white, size: 17),
                  ),
                ),
              ),

              // ........... Dollar Icon  ....................
              Icon(
                Icons.attach_money_outlined,
                color: const Color.fromARGB(255, 247, 184, 59),
                size: 25,
              ),

              // ........... Price  ....................
              LightText(text: "4.20", color: Colors.white, size: 18),

              SizedBox(width: 10),

              // ........... Decrement  Button ....................
              Container(
                height: 35,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 145, 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: BoldText(text: "-", color: Colors.white, size: 25),
                ),
              ),

              // ........... Produnt Amount  ....................
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 44, 44, 44),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Center(
                    child: LightText(text: "1", color: Colors.white, size: 17),
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
                  child: BoldText(text: "+", color: Colors.white, size: 25),
                ),
              ),
            ],
          ),
            
        
        ],
      ),
    );
  }
}
