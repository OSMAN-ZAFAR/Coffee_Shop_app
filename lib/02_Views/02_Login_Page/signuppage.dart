// ignore_for_file: duplicate_import, sort_child_properties_last, unused_import

import 'package:coffee_shop_app/02_Views/02_Login_Page/loginpage.dart';
import 'package:coffee_shop_app/02_Views/03_Home_Page/homepage.dart';
import 'package:coffee_shop_app/widgets/BoldText.dart';
import 'package:coffee_shop_app/widgets/LightText.dart';
import 'package:coffee_shop_app/widgets/MyForm.dart';
import 'package:coffee_shop_app/widgets/MyHeading.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 950,
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
                height: 750,
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
                          text: " WELCOME ",
                          size: 25,
                          color: const Color.fromARGB(255, 247, 246, 246),
                        ),
                      ),
                    ),

                    LightText(
                      text: "Sign up to proceed",
                      color: Colors.white,
                      size: 17,
                    ),

                    SizedBox(height: 10),

                    // .........................username text..........
                    Myheading(title: "Name", icon: Icons.person_2_outlined),
                    // .........................username textformfield..........
                    Myform(label: "Name"),

                    // .........................Email text..........
                    Myheading(title: "Email", icon: Icons.email_outlined),

                    // .........................Email textformfield..........
                    Myform(label: "Email"),

                    // .........................password text..........
                    Myheading(
                      title: "Password",
                      icon: Icons.lock_clock_outlined,
                    ),
                    // .........................password textformfield..........
                    Myform(label: "Password"),

                    // ........................ Confirm.password text..........
                    Myheading(
                      title: "Confirm Password",
                      icon: Icons.lock_clock_outlined,
                    ),
                    // .........................Confirm password textformfield..........
                    Myform(label: "Confirm Password"),

                    
                    // .........................register here..........
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Row(
                        children: [
                          LightText(
                            text: "Already have account ,",
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginpage()));
                            },
                            child: LightText(
                              text: "Login",
                              color: const Color.fromARGB(255, 249, 191, 16),
                              size: 17,
                            ),
                          ),
                          
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
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(164, 8, 73, 139),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: BoldText(text: "Sign up", color: Colors.amber),
                        ),
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
