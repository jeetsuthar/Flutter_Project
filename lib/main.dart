import 'package:flutter/material.dart';
import 'package:practice_set_1/Pages/Login.dart';
import 'package:practice_set_1/Pages/home.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:practice_set_1/Pages/test.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        // primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue.shade300),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        MyRoutes.LoginRoutes: (context) => Login(),
        MyRoutes.HomeRoutes: (context) => Home(),
        // "/": (context) => Home()
      },
    );
  }
}
