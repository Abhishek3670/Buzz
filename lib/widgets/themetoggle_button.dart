import 'package:flutter/material.dart';
import 'package:pipbuzz/provider/ThemeChanger.dart';
import 'package:provider/provider.dart';

class ThemeToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Switch(
      value: themeNotifier.darkMode,
      onChanged: (value) {
        themeNotifier.darkMode = value;
      },
    );
  }
}