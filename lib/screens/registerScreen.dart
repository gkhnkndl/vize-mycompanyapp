import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vize/widgets/buttonItem.dart';
import 'package:vize/widgets/goBack.dart';

import '../widgets/textBoxes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              TextInput(
                  textTitle: "Phone Number",
                  hint: "Example: 544 836 4520",
                  label: "Enter Phone Number"),
              SizedBox(height: 10),
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
              TextInputPassword(
                  textTitle: "Password",
                  hint: "Enter your password again",
                  label: "Password again"),
              SizedBox(height: 10),
              Column(
                children: [
                  SizedBox(height: 10),
                  ButtonAdd2(target: "/login", buttonText: "Register"),
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
