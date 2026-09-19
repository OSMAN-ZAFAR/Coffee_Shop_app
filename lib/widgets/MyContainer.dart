// ignore_for_file: must_be_immutable

import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';


class Mycontainer extends StatelessWidget {
   Mycontainer({super.key,required this.icon, required this.tittle});

  
  String tittle;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return 
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
          height: 50,
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
           color: const Color.fromARGB(125, 60, 111, 162),
           
         
          ),
          child: Row(
            children: [
              Icon(icon,color: Colors.amber,size: 40,),
              SizedBox(width: 25,),
              LightText(text: tittle,size: 17,)


            ],
          ),
         
         ),
       );
  }
}