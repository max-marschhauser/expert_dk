import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(255, 0, 0, 1.0),
    primary: const Color.fromRGBO(0, 54, 144, 1),
    secondary: const Color.fromRGBO(214, 234, 255, 1),
    tertiary: const Color.fromRGBO(255, 0, 0, 1.0),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
    labelSmall: TextStyle(color: Colors.white),
    labelMedium: TextStyle(color: Colors.white),
    labelLarge: TextStyle(color: Colors.white),
    titleSmall: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
    titleLarge: TextStyle(color: Colors.white),
    displaySmall: TextStyle(color: Colors.white),
    displayMedium: TextStyle(color: Colors.white),
    displayLarge: TextStyle(color: Colors.white),
    headlineSmall: TextStyle(color: Colors.white),
    headlineMedium: TextStyle(color: Colors.white),
    headlineLarge: TextStyle(color: Colors.white),
  ),
);
