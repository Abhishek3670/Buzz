import 'package:flutter/material.dart';
import 'package:pipbuzz/pages/login.dart';
import 'package:pipbuzz/provider/ThemeChanger.dart';
import 'package:pipbuzz/provider/registration_provider.dart';
import 'package:provider/provider.dart'; // Import your login page class


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ThemeNotifier()),
      ChangeNotifierProvider(create: (_) => RegistrationProvider())
    ],
    child:  MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    // final registrationProvider = Provider.of<RegistrationProvider>(context);
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        //
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: themeNotifier.darkMode ? ThemeMode.dark : ThemeMode.light,
      // Set the home property to your login page widget
      home: const LoginPage(),
    );
  }
}
