import 'package:flutter/material.dart';

final KLightTheme = ThemeData(
  primaryColor: Color(0xFFE65100),
  backgroundColor: Color(0xFFE5E5E5),
  accentIconTheme: IconThemeData(color: Color(0xFFE65100)),
  textTheme: TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        height: 1.8,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontSize: 18,
        height: 1.8,
      ),
      headline3: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 1.8,
        color: Color(0xFFE65100),
      ),
      headline4: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 1.6,
          color: Colors.black.withOpacity(0.8)),
      headline5: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          height: 1.4,
          color: Colors.black.withOpacity(0.8)),
      headline6: TextStyle(fontSize: 10, height: 1.1)),
);
