// ignore_for_file: unused_local_variable, prefer_const_constructors_in_immutables, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/03_Controllers/favoriteController.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/01_Models/coffee.dart';
import 'package:coffee_shop_app/Data/coffee_data.dart';
import 'package:flutter/material.dart';

class Favoriteitemtile extends StatefulWidget {

  //............. Constructor.....................

  Favoriteitemtile({super.key, required this.coffee,required this.onRemoveItem});

  final Coffee coffee;
  final VoidCallback onRemoveItem;

  @override
  State<Favoriteitemtile> createState() => _FavoriteitemtileState();
}

class _FavoriteitemtileState extends State<Favoriteitemtile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color.fromARGB(125, 60, 111, 162),

            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              // .......................... Coffee Image .......................
              Image.asset(
                widget.coffee.image,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),

              SizedBox(width: 22),

              // ............................. Coffee Information ..................
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Coffee Name
                    Text(
                      widget.coffee.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 6),
                    // Price
                    Text(
                      "Price: ${widget.coffee.price.toString()}",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        //........................ Remove from favorite..................................
        GestureDetector(
          onTap: () {
            FavoriteController.instance.removeToFavorie(widget.coffee);
            widget.onRemoveItem();
          },

          child: Padding(
            padding: const EdgeInsets.only(left: 350,top: 20),
            child: Icon(Icons.favorite,color: Colors.orange,size: 35,
              // margin: EdgeInsets.only(left: 330, top: 10),
                    ),
          )),
      ],
    );
  }
}
