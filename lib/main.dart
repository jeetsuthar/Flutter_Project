import 'package:flutter/material.dart';
import 'package:practice_set_1/Pages/Login.dart';
import 'package:practice_set_1/Pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      // themeMode: ThemeMode.dark,
      // theme: ThemeData(primaryColor: Colors.blue),
      // darkTheme: ThemeData(brightness: Brightness.dark),

      routes: {
        "/": (context) => new Home(), // object with new keyword
        "/login": (context) => Login(), // object without new keyword
      },
    );
  }
}
