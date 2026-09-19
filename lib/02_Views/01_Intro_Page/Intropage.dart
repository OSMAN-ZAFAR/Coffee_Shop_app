// ignore_for_file: sort_child_properties_last, unused_import

import 'package:coffee_shop_app/02_Views/02_Login_Page/loginpage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 900,
              width: 450,
              decoration: BoxDecoration(
                // color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage("assets/intro.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Column(
                  children: [
                    Container(
                      height: 350,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(142, 150, 152, 154),
                        borderRadius: BorderRadius.circular(25),
                      ),                    
                      child: Column(
                        children: [
                        
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: BoldText(
                                text:
                                    " \"Fuel your day with our prem-\n -ium artisanal brews and ready\n for pickup or delivery at the tap\n\t\t\t\t\t\t \t\t\t\t\t of a button. \" \n\n  WELCOME TO OUR FAMILY  !",
                                size: 19,
                                color: const Color.fromARGB(255, 247, 246, 246),
                              ),
                            ),
                          ),
                    
                          SizedBox(height: 50,),
                    
                          GestureDetector(
                            onTap: () {
                              print("button is working ");
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Loginpage() ),
                            );
                              
                            },
                            child: Container(
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                              color: const Color.fromARGB(164, 8, 73, 139),
                              borderRadius: BorderRadius.circular(30)
                            
                              ),
                              child: Center(child: BoldText(text: "Get Started",color: Colors.amber,)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
