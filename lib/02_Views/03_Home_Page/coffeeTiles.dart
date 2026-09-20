// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/01_Models/coffee.dart';
import 'package:coffee_shop_app/Data/coffee_data.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  CoffeeTile({
  super.key,
  required this.coffee,
});

final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Beanpage(coffee:coffee)));
      },
      child: Container(
        decoration: BoxDecoration(
          // main container.......
          color: const Color.fromARGB(125, 60, 111, 162),
      
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(right: 25),
        height: 270,
        width: 400,
      
        child: Row(
          children: [
      
            // Image container stack........
            Stack(
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
                            image: AssetImage(coffee.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 250,
                        width: 180,
                      ),
      
                      // ranking container.....
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              // star icon......
                              padding: EdgeInsetsGeometry.only(left: 14),
                              child: Icon(
                                Icons.star,
                                color: const Color.fromARGB(255, 251, 179, 34),
                              ),
                            ),
      
                            SizedBox(width: 5),
      
                            // Ranking text......
                            BoldText(text: coffee.rating, color: Colors.white, size: 18),
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
                    ],
                  ),
                ),
              ],
            ),
      
      
      
            // Details container ........
            Container(
              height: 250,
              width: 180,
              color: const Color.fromARGB(0, 255, 193, 7),
      
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Coffee name ...............
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: BoldText(text:coffee.name, color: Colors.white),
                  ),
      
                  // Features of coffee.............
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: BoldText(text:coffee. feature, color: Colors.grey, size: 15),
                  ),
                    SizedBox(height: 10,),
                  // Last Row......
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        children: [
      
      
                          BoldText(text: "Price"),
      
      
      
      
                           SizedBox(width: 30),
                          // Dollar Icon......
                          Icon(
                            Icons.attach_money_outlined,
                            color: const Color.fromARGB(255, 241, 163, 99),
                            size: 35,
                          ),
      
                          // price text...
                          BoldText(text:coffee. price.toString(), color: Colors.white),
      
                         
      
                         
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
    );
  }
}
