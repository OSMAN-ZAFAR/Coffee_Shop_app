// ignore_for_file: unused_local_variable, curly_braces_in_flow_control_structures, non_constant_identifier_names, unused_import

import 'package:coffee_shop_app/01_Models/cart_item.dart';

class CartController {

  List<CartItem> cartItem=[];

  void addToCart(CartItem item){
    cartItem.add(item);
  }
  
  void Increment(CartItem item){
    item.quantity++;
  }

  void Decrement (CartItem item)

  {
    if(item.quantity>1)
    item.quantity--;
  }


  double totalPrice(){
    double total=0;

    for(CartItem item in cartItem){
      total+= item.selectedPrice * item.quantity;
    }
    return total;
  }

  static final CartController instance = CartController();
}