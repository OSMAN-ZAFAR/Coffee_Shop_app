// ignore_for_file: sort_child_properties_last, unused_import

import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

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
              child: Container(
                height: 530,
                width: 330,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(142, 150, 152, 154),

                  borderRadius: BorderRadius.circular(25),
                ),

                child: Column(
                  children: [
                    // .........................welcomeback text..........
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: BoldText(
                          text: " WELCOME BACK  ",
                          size: 30,
                          color: const Color.fromARGB(255, 247, 246, 246),
                        ),
                      ),
                    ),


                    LightText(text: "Sign in to proceed",
                    color: Colors.white,
                    size: 17,
                    ),


                    SizedBox(height: 30),
                    // .........................username text..........

                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 5),
                          LightText(text: "Username :", 
                          color: Colors.white,
                          size: 18,)
                        ],

                     
                      ),
                    ),
             
                    SizedBox(height: 10),
                    // .........................username textformfield..........
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                      color: const Color.fromARGB(164, 8, 73, 139),
                      borderRadius: BorderRadius.circular(10)

                      ),
                     child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "\t\t\tEnter Username...",
                          
                        ),
                        // textAlign: TextAlign.,
                      ),
                    ),
                    SizedBox(height: 10),
               
                    // .........................password text..........

                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.key_rounded),
                          SizedBox(width: 5),
                          LightText(text: "password :", 
                          color: Colors.white,
                          size: 18,)
                        ],

                     
                      ),
                    ),
             
                    SizedBox(height: 10),
                    // .........................password textformfield..........
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                      color: const Color.fromARGB(164, 8, 73, 139),
                      borderRadius: BorderRadius.circular(10)

                      ),
                     child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "\t\t\tEnter password...",
                          
                        ),
                        // textAlign: TextAlign.,
                      ),
                    ),
                      
                     // .........................Forget Password..........

                    SizedBox(height: 10),

                      Padding(
                      padding: const EdgeInsets.only(left: 175),
                      child: Row(
                        children: [
                          
                          LightText(text: "Forget Password", 
                          color: const Color.fromARGB(255, 249, 191, 16),
                          size: 17,)
                        ],

                     
                      ),
                    ),
                     SizedBox(height: 10),

                     // .........................register here..........
                  
                       Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Row(
                        children: [
                          LightText(text: "If you're new ,", 
                          color: Colors.white,
                          size: 15,),
                          SizedBox(width: 5),
                          LightText(text: "Register here", 
                          color: const Color.fromARGB(255, 249, 191, 16),
                          size: 17,)
                        ],

                     
                      ),
                    ),
                      // SizedBox(height: 40),
                    SizedBox(height: 30),
 
                   // .........................Login Button................
                   GestureDetector(
                      onTap: () {
                        print("button is working ");
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage() ),
                      );
                        
                      },
                      child: Container(
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(
                        color: const Color.fromARGB(164, 8, 73, 139),
                        borderRadius: BorderRadius.circular(30)
                      
                        ),
                        child: Center(child: LightText(text: "Login",color: Colors.amber,)),
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
