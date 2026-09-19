// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/03_Home_Page/coffeeTiles2.dart';
import 'package:coffee_shop_app/02_Views/05_Cart_Page/cartpage.dart';
import 'package:coffee_shop_app/02_Views/07-Favorite_Page/favoritepage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'drawer.dart';
import 'package:flutter/material.dart';
import 'coffeeTiles.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  List coffeeNames = [
    "Cappuccino",
    "Espresso",
    "Latte",
    "Flat White",
    "Americano",
    "Macchiato",
    "Cortado",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //.................. Drawer  ................................
        drawer: MyDrawer(),

        //.................. Bottom Navigation ................................
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor:  const Color.fromARGB(125, 60, 111, 162),


          items: [
            //............ Home 
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Color.fromARGB(230, 253, 168, 50),
                size: 28,
              ),
              label: '',
            ),
          
           //............ cart 
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cartpage()),
                  );
                },
                child: Icon(
                  Icons.shopping_bag,
                  color: const Color.fromARGB(255, 212, 211, 211),
                  size: 28,
                ),
              ),
              label: '',
            ),
 
           //............ favorite 
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

            //............ Notification 
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
        
         //............................. Body .........................
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ☰ Drawer Button
                  IconButton(
                    icon: const Icon(Icons.menu_outlined, size: 30,color: Color.fromARGB(244, 230, 170, 5),),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),

                  // Your existing content starts here
                  SizedBox(height: 30),

                  //............................. text .........................
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: BoldText(
                      text: 'Find The Best Coffee \n \t\t\t\t\t\t For You...',
                      color: const Color.fromARGB(255, 212, 211, 211),
                      size: 32,
                    ),
                  ),

                  SizedBox(height: 20),

                  //........................... search bar .............................
                  Container(
                    height: 50,
                    width: 390,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(125, 60, 111, 162),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: const Color.fromARGB(255, 212, 211, 211),
                          ),
                        ),

                        SizedBox(width: 20),

                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Find Your Coffee...",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  //......................... List of coffee Names ......................
                  Container(
                    height: 80,
                    width: double.maxFinite,
                    color: const Color.fromARGB(255, 21, 21, 21),

                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: coffeeNames.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 30),
                          height: 15,
                          width: 104,
                          child: BoldText(
                            text: coffeeNames[index],size: 15,
                            color: index == 0
                                ? const Color.fromARGB(255, 241, 163, 99)
                                : const Color.fromARGB(255, 212, 211, 211),
                          ),
                        );
                      },
                    ),
                  ),

                  Coffeetiles(),

                  SizedBox(height: 15),

                  BoldText(
                    text: "Special for you",
                    size: 20,
                    color: const Color.fromARGB(255, 212, 211, 211),
                  ),

                  SizedBox(height: 15),

                  Coffeetiles2(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
