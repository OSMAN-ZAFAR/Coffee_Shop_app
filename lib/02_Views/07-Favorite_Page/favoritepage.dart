// ignore_for_file: unused_local_variable, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/bottomHalfBeanPage.dart';
import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/03_Controllers/favoriteController.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/02_Views/05_Cart_Page/cartpage.dart';
import 'favoriteItemTile.dart';
import 'package:coffee_shop_app/Data/coffee_data.dart';
import 'package:coffee_shop_app/Data/favorite_data.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:flutter/material.dart';

class Favoritepage extends StatefulWidget {
  const Favoritepage({super.key});

  @override
  State<Favoritepage> createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  @override
  Widget build(BuildContext context) {
    //................ Connecting the controller with page....................

    final favoriteCoffees = FavoriteController.instance.favoriteCoffees;

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

          backgroundColor: const Color.fromARGB(124, 6, 6, 6),

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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cartpage()),
                  );
                },
                child: Icon(
                  Icons.shopping_bag,
                  color: const Color.fromARGB(187, 60, 111, 162),
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
                color: const Color.fromARGB(187, 60, 111, 162),
                size: 28,
              ),
              label: '',
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: favoriteCoffees
                .map((coffee) => Favoriteitemtile(coffee: coffee,onRemoveItem: () {
                  setState(() {
                    
                  });
                },))
                .toList(),
          ),
        ),
      ),
    );
  }
}
