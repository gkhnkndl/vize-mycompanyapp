import 'package:flutter/material.dart';
import 'package:vize/screens/helpScreen.dart';
import 'package:vize/screens/homeScreen.dart';
import 'package:vize/screens/loginScreen.dart';
import 'package:vize/screens/myCompany.dart';
import 'package:vize/screens/profileScreen.dart';
import 'package:vize/screens/registerScreen.dart';
import 'package:vize/screens/settingsScreen.dart';
import 'package:vize/screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/settings': (context) => SettingsScreen(),
        '/company': (context) => MyCompanyScreen(),
        '/help': (context) => HelpScreen(),
      },
      title: 'MyCompanyApp',
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
