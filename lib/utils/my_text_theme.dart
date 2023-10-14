import 'package:flutter/material.dart';

class MyTextTheme {
  static TextTheme getTextTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 96.0,
        fontWeight: FontWeight.w300, // Light
      ),
      displayMedium: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 60.0,
        fontWeight: FontWeight.w300, // Light
      ),
      displaySmall: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 48.0,
        fontWeight: FontWeight.w400, // Normal
      ),
      headlineMedium: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 34.0,
        fontWeight: FontWeight.w400, // Normal
      ),
      headlineSmall: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 24.0,
        fontWeight: FontWeight.w400, // Normal
      ),
      titleLarge: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
          color: Colors.black // Normal
          ),
      titleMedium: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 16.0,
        fontWeight: FontWeight.w400, // Normal
      ),
      titleSmall: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 14.0,
        fontWeight: FontWeight.w400, // Normal
      ),
      bodyLarge: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 16.0,
        fontWeight: FontWeight.w400, // Normal
      ),
      bodyMedium: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 14.0,
        fontWeight: FontWeight.w400, // Normal
      ),
      labelLarge: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 14.0,
        fontWeight: FontWeight.w700, // Bold
      ),
      bodySmall: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 12.0,
        fontWeight: FontWeight.w400, // Normal
      ),
      labelSmall: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 10.0,
        fontWeight: FontWeight.w700, // Bold
      ),
    );
  }
}
