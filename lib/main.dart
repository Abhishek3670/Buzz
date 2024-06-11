import 'package:flutter/material.dart';
import 'package:pipbuzz/pages/login.dart'; // Import your login page class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      // Set the home property to your login page widget
      home: LoginPage(),
    );
  }
}
