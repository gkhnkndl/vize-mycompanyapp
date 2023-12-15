import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/widgets/buttonItem.dart';
import 'package:vize/widgets/goBack.dart';

import '../widgets/textBoxes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "",
          style: GoogleFonts.raleway(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 25, 28, 46),
          Color.fromARGB(255, 34, 27, 44)
        ])),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              TextInput(
                  textTitle: "E-mail",
                  hint: "Enter your email address",
                  label: "E-mail"),
              SizedBox(height: 10),
              TextInputPassword(
                  textTitle: "Password",
                  hint: "Enter your password",
                  label: "Password"),
              SizedBox(height: 10),
              Column(
                children: [
                  SizedBox(height: 100),
                  ButtonAdd2(target: "/home", buttonText: "Log in"),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          "forgot password?",
                          style: GoogleFonts.raleway(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GoBack(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
