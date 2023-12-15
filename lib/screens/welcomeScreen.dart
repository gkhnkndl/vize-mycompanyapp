// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/buttonItem.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 25, 28, 46),
            Color.fromARGB(255, 34, 27, 44)
          ])),
        ),
        backgroundColor: Color.fromARGB(255, 55, 55, 56),
        title: Text(
          "MyCompanyPlanner",
          style: GoogleFonts.raleway(
              color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 25, 28, 46),
          Color.fromARGB(255, 34, 27, 44)
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ButtonAdd2(target: "/login", buttonText: "Login"),
                      SizedBox(height: 25),
                      ButtonAdd(target: "/register", buttonText: "Register"),
                      SizedBox(height: 25),
                      ButtonAdd(
                          target: "/google",
                          buttonText: "Continue with Google"),
                      SizedBox(height: 25),
                      ButtonAdd(
                          target: "/telephone",
                          buttonText: "Continue with phone number"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
