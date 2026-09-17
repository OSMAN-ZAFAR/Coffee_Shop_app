// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/02_Views/04_Details_View_Page/bottomHalfBeanPage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/02_Views/05_Cart_Page/cartpage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/Data/favorite_data.dart';
import 'package:flutter/material.dart';

class Favoritepage extends StatelessWidget {
  const Favoritepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Text("Favorite"),
          ),

          iconTheme: const IconThemeData(color: Colors.orange),
        ),
        //.................. Bottom Navigation ................................
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          backgroundColor: const Color.fromARGB(125, 60, 111, 162),

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
                    MaterialPageRoute(builder: (context) => Favoritepage()),
                  );
                },
                child: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(230, 253, 168, 50),
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
        body: Column(
          children: [

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: favoriteCoffees.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      bottom: 15,
                    ),
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(125, 60, 111, 162),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 80,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(favoriteCoffees[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        const SizedBox(width: 15),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              favoriteCoffees[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 5),

                            Text(
                              '\$${favoriteCoffees[index].price}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
