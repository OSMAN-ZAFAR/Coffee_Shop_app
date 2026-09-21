// ignore_for_file: avoid_print, unused_local_variable, prefer_const_constructors_in_immutables, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/01_Models/cart_item.dart';
import 'package:coffee_shop_app/01_Models/coffee.dart';
import 'package:coffee_shop_app/02_Views/04_Details_View_Page/bottomHalfBeanPage.dart';
import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/02_Views/07-Favorite_Page/favoritepage.dart';
import 'package:coffee_shop_app/02_Views/06_Payment_Page/paymentpage.dart';
import 'package:coffee_shop_app/03_Controllers/cart_controller.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/Data/coffee_data.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'cart_item_tile.dart';

class Cartpage extends StatefulWidget {
  Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    final cartItem = CartController.instance.cartItem;

    final totalPrice=CartController.instance.totalPrice();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Text("Cart"),
          ),

          iconTheme: const IconThemeData(color: Colors.orange),
        ),
        //............ Bottom Navigation Bar.............
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(163, 3, 3, 3),
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
                  color: const Color.fromARGB(187, 60, 111, 162),
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
                    MaterialPageRoute(builder: (context) => Favoritepage()),
                  );
                },
                child: Icon(
                  Icons.favorite,
                  color: const Color.fromARGB(187, 60, 111, 162),
                  size: 28,
                ),
              ),
              label: '',
            ),

            //............ Notifications
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_important_rounded,
                color: const Color.fromARGB(187, 60, 111, 162),
                size: 28,
              ),
              label: '',
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //.................. Container 1.......................
                  ...cartItem.map(
                    (cartItem) => CartItemTile(cartItem: cartItem,
                    onQunatityChanged: (){
                      setState(() {
                        
                      });
                    },
                    ),
                  ),
                  // .............. Last Row .......................
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Price Container........
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          height: 90,
                          width: 120,

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
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      172,
                                      7,
                                    ),
                                    size: 35,
                                  ),

                                  BoldText(text: totalPrice.toStringAsFixed(2), size: 25),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10),

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
            ],
          ),
        ),
      ),
    );
  }
}
