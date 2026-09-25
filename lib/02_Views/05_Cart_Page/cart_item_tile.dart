// ignore_for_file: unused_local_variable, prefer_const_constructors_in_immutables, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers, must_be_immutable, unused_import

import 'package:coffee_shop_app/02_Views/04_Details_View_Page/beanpage.dart';
import 'package:coffee_shop_app/02_Views/05_Cart_Page/cartpage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/03_Controllers/cartController.dart';
import 'package:coffee_shop_app/01_Models/cart_item.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/01_Models/coffee.dart';
import 'package:coffee_shop_app/Data/coffee_data.dart';
import 'package:flutter/material.dart';

class CartItemTile extends StatefulWidget {
  const CartItemTile({
    super.key,
    required this.cartItem,
    required this.onQunatityChanged,
    required this.onRemoveItem
  });

  final CartItem cartItem;
  final VoidCallback onQunatityChanged;
  final VoidCallback onRemoveItem;

  @override
  State<CartItemTile> createState() => _CartItemTileState();
}

class _CartItemTileState extends State<CartItemTile> {
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
                widget.cartItem.coffee.image,
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
                      widget.cartItem.coffee.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 6),

                    // Selected Size
                    Text(
                      "Size: ${widget.cartItem.selectedSize}",
                      style: const TextStyle(fontSize: 14),
                    ),

                    SizedBox(height: 6),

                    // Price
                    Text(
                      "Price: ${widget.cartItem.selectedPrice.toString()}",
                      style: const TextStyle(fontSize: 16),
                    ),

                    SizedBox(height: 10),

                    // ........................ QUANTITY ..................
                    Row(
                      children: [
                        // Minus Button
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              CartController.instance.Decrement(
                                widget.cartItem,
                              );
                            });
                            widget.onQunatityChanged();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(),
                              color: const Color.fromARGB(255, 255, 172, 7),
                            ),
                            child: const Text(
                              "-",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 12),

                        // Quantity
                        Text(
                          widget.cartItem.quantity.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(width: 12),

                        // Plus Button
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              CartController.instance.Increment(
                                widget.cartItem,
                              );
                            });
                            widget.onQunatityChanged();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(),
                              color: const Color.fromARGB(255, 255, 172, 7),
                            ),
                            child: const Text(
                              "+",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        //........................ Remove from Cart Button..................................
        GestureDetector(
          onTap: () {
           CartController.instance.removeToCart(widget.cartItem);
           widget.onRemoveItem();
          },

          child: Container(
            child: Center(
              child: BoldText(text: "X", color: Colors.white,size: 17,),
            ),
            margin: EdgeInsets.only(left: 330, top: 10),
            height: 30,
            width: 75,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 172, 7),

              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
