// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:coffee_shop_app/01_Models/coffee.dart';

class CartItem {
  final Coffee coffee;
  final String selectedSize;
  final double selectedPrice;
  int quantity;

  CartItem({
    required this.coffee,
    required this.selectedSize,
    required this.selectedPrice,
    this.quantity=1
  });
}