import 'package:flutter/material.dart';

class ThemeApp {
  const ThemeApp._();

  static const fontName = 'Poppins';
  static final appTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xff27AE60),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: fontName,
    textTheme: textTheme,
    cardColor: Colors.white,
    unselectedWidgetColor: const Color(0xffF1F1F1),
  );

  static TextTheme textTheme = const TextTheme(
      displayLarge: TextStyle(
          fontFamily: fontName,
          color: Colors.black,
          fontSize: 57,
          fontWeight: FontWeight.normal),
      displayMedium: TextStyle(
          fontFamily: fontName,
          color: Colors.black,
          fontSize: 45,
          fontWeight: FontWeight.normal),
      displaySmall: TextStyle(
          fontFamily: fontName,
          color: Colors.black,
          fontSize: 36,
          fontWeight: FontWeight.normal),
      headlineLarge: TextStyle(
          fontFamily: fontName,
          color: Colors.black,
          fontSize: 32,
          fontWeight: FontWeight.normal),
      headlineMedium: TextStyle(
          fontFamily: fontName,
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.normal),
      headlineSmall: TextStyle(
          fontFamily: fontName,
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.normal),
      titleLarge: TextStyle(
          fontFamily: fontName,
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w700),
      titleMedium: TextStyle(
        fontFamily: fontName,
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: TextStyle(
        fontFamily: fontName,
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        fontFamily: fontName,
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      labelMedium: TextStyle(
        fontFamily: fontName,
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelSmall: TextStyle(
        fontFamily: fontName,
        color: Colors.black,
        fontSize: 11,
        fontWeight: FontWeight.normal,
      ),
      bodyLarge: TextStyle(
          fontFamily: fontName,
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.normal),
      bodyMedium: TextStyle(
          fontFamily: fontName,
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.normal),
      bodySmall: TextStyle(
        fontFamily: fontName,
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ));
}
