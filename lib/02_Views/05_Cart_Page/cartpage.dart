// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/bottomHalfBeanPage.dart';
import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/02_Views/07-Favorite_Page/favoritepage.dart';
import 'package:coffee_shop_app/02_Views/06_Payment_Page/paymentpage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'container_1.dart';
import 'container_2.dart';
import 'container_3.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //............ Bottom Navigation Bar.............
        bottomNavigationBar: BottomNavigationBar(
                 type: BottomNavigationBarType.fixed,
          backgroundColor:  const Color.fromARGB(125, 60, 111, 162),
          items: [
            //............ Home 
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Icon(
                  Icons.home_filled,
                  color: const Color.fromARGB(255, 212, 211, 211),
                  size: 28,
                ),
              ),
              label: '',
            ),
         
            //............ cart 
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.shopping_bag,
                  color: Color.fromARGB(230, 253, 168, 50),
                  size: 28,
                ),
              ),
              label: '',
            ),
           
           //............ favorites            
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                   Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Favoritepage(),
                              ),
                            );
                },
                child: Icon(
                  Icons.favorite,
                  color: const Color.fromARGB(255, 212, 211, 211),
                  size: 28,
                ),
              ),
              label: '',
            ),
         
           //............ Notifications 
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_important_rounded,
                color: const Color.fromARGB(255, 212, 211, 211),
                size: 28,
              ),
              label: '',
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              //.................. Top Row.......................
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Top row app Icon.......
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(185, 74, 73, 73),
                    ),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.apps_outlined,
                      size: 30,
                      color: const Color.fromARGB(194, 203, 202, 202),
                    ),
                  ),

                  // Top row cart text.......
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: BoldText(
                      text: "Cart",
                      color: Colors.white,
                      size: 23,
                    ),
                  ),

                  // Top row image.......
                  Container(
                    margin: EdgeInsets.only(right: 30, top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(185, 74, 73, 73),
                      image: DecorationImage(
                        image: AssetImage('assets/mypic.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 40,
                    width: 40,
                  ),
                ],
              ),

              SizedBox(height: 20),
              //.................. Container 1.......................
              Container1(),

              SizedBox(height: 30),

              //.................. Container 2.......................
              Container2(),

              SizedBox(height: 30),

              //.................. Container 3.......................
              Container3(),

              // .............. Last Row .......................
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Price Container........
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 80,
                      width: 100,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LightText(
                            text: "Total Price",
                            color: const Color.fromARGB(255, 169, 168, 168),
                            size: 15,
                          ),

                          Row(
                            children: [
                              Icon(
                                Icons.attach_money_outlined,
                                color: const Color.fromARGB(255, 255, 172, 7),
                                size: 35,
                              ),

                              BoldText(text: "10.40", size: 25),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 50),

                    // pay button........
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Paymentpage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 40),
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 172, 7),
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Center(
                          child: BoldText(
                            text: "Pay",
                            color: const Color.fromARGB(255, 247, 245, 245),
                          ),
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
  }
}
