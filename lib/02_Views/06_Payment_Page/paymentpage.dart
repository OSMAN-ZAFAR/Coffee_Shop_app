// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/02_Views/04_Details_View_Page/bottomHalfBeanPage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/02_Views/05_Cart_Page/cartpage.dart';
import 'package:coffee_shop_app/03_Controllers/cart_controller.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class Paymentpage extends StatelessWidget {
   Paymentpage({super.key});

 final totalPrice=CartController.instance.totalPrice(); 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                    // .............. App Bar .........................

       appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Text("Payment"),
          ),

          iconTheme: const IconThemeData(color: Colors.orange),
        ),
       
       
        body: Column(
          children: [
            
            // .............. Credit Card conatiner .........................
            Container(
              height: 320,
              width: 380,
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 255, 193, 7),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: BoldText(
                      text: "credit card",
                      color: const Color.fromARGB(255, 212, 211, 211),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 250,
                      width: 400,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 197, 47, 47),
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(
                          image: AssetImage("assets/creditcard.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // .............. wallet conatiner .........................
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(125, 60, 111, 162),
                borderRadius: BorderRadiusDirectional.circular(40),
              ),
              child: Row(
                children: [
                  // image .....................
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/wallet.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  BoldText(
                    text: "wallet",
                    size: 20,
                    color: const Color.fromARGB(255, 212, 211, 211),
                  ),

                ],
              ),
            ),

            SizedBox(height: 15),

            // .............. Google Pay conatiner .........................
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(125, 60, 111, 162),
                borderRadius: BorderRadiusDirectional.circular(40),
              ),
              child: Row(
                children: [
                  // image .....................
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/googlepay.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  BoldText(
                    text: "Google Pay",
                    size: 20,
                    color: const Color.fromARGB(255, 212, 211, 211),
                  ),

                
                ],
              ),
            ),

            SizedBox(height: 15),
            // .............. amazone Pay conatiner .........................
        
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(125, 60, 111, 162),
                borderRadius: BorderRadiusDirectional.circular(40),
              ),
              child: Row(
                children: [
                  // image .....................
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/amazonpay.png",),
                          fit: BoxFit.cover,
                          
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  BoldText(
                    text: "Amazon Pay",
                    size: 20,
                    color: const Color.fromARGB(255, 212, 211, 211),
                  ),

                
                ],
              ),
            ),
          
          SizedBox(height: 90,),
            // .............. Last Row .......................
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price Container........
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 80,
                    width: 130,

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

                            BoldText(text:totalPrice.toString(), size: 25),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 30),

                  // pay button........
                  GestureDetector(
                    onTap: () {
                     
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 49),
                      child: Container(
                        
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 172, 7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      
                        child: Center(
                          child: BoldText(
                            text: "Pay ",
                            color: const Color.fromARGB(255, 247, 245, 245),
                          ),
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
    );
  }
}