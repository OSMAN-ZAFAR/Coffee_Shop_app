// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/02_Views/05_Cart_Page/cartpage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/Models/coffee.dart';
import 'package:coffee_shop_app/Data/coffee_data.dart';
import 'package:flutter/material.dart';

class Bottomhalfbeanpage extends StatelessWidget {
  const Bottomhalfbeanpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // .............. Description Container ................

        // Description Heading........
        Padding(
          padding: const EdgeInsets.only(top: 580, left: 15),
          child: BoldText(
            text: "Description",
            color: const Color.fromARGB(255, 203, 201, 201),
          ),
        ),

        SizedBox(height: 10),

        // Description Text........
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 60,
          width: 480,
          child: LightText(
            text:"  Coffee is a popular warm drink made from roasted and\n ground seeds of a tropical plant.",
               
            color: Colors.white,
            size: 14,
          ),
        ),

        // .............. Size Container .......................

        // Size Heading........
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: BoldText(text: "Size"),
        ),
        
        SizedBox(height: 10),

        // Size conatiner........
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              // Size conatiner 1........
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(218, 60, 111, 162),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: 100,
                child: Center(
                  child: LightText(
                    text: "250gm",
                    size: 15,
                    color: const Color.fromARGB(255, 240, 141, 29),
                  ),
                ),
              ),

              SizedBox(width: 20),

              // Size conatiner 2........
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(218, 60, 111, 162),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: 100,
                child: Center(
                  child: LightText(
                    text: "500gm",
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(width: 20),

              // Size conatiner 3........
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(218, 60, 111, 162),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: 100,
                child: Center(
                  child: LightText(
                    text: "1000gm",
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),

        // .............. Last Row .......................
        
        Padding(
          padding: const EdgeInsets.all(16.0),
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
                LightText(text: "Price",color: const Color.fromARGB(255, 169, 168, 168),size: 15,),

                Row(
                  children: [
                    Icon(Icons.attach_money_outlined,color:  const Color.fromARGB(255, 255, 172, 7),size: 35,),

                    BoldText(text: "10.50",size: 25,)


                  ],
                )
              ],
             ),
            ),
            
            SizedBox(width: 50),
            
             // Add to Cart button........
           
            GestureDetector(
              onTap: () {

                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cartpage()),
                );
                
              },
              child: Container(
                margin: EdgeInsets.only(right: 40),
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 172, 7),
                borderRadius: BorderRadius.circular(15)
                ),
              
                child: Center(child: BoldText(text: "Add to Cart", color: const Color.fromARGB(255, 247, 245, 245),)),
              
              ),
            )
            
            
            ]),
        ),
      ],
    );
  }
}
