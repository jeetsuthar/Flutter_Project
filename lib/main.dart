import 'package:flutter/material.dart';
import 'package:practice_set_1/Pages/Login.dart';
import 'package:practice_set_1/Pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        // "/": (context) => new Home(), // object with new keyword
        "/": (context) => Login(), // object without new keyword
      },
    );
  }
}
