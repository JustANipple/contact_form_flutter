import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
Color grey900 = const Color.fromRGBO(42, 65, 68, 1);
Color grey500 = const Color.fromRGBO(134, 162, 165, 1);
Color white = const Color.fromRGBO(255, 255, 255, 1);
Color green600 = const Color.fromRGBO(12, 125, 105, 1);
Color green200 = const Color.fromRGBO(224, 241, 232, 1);
Color red = const Color.fromRGBO(215, 60, 60, 1);

// Typography
TextTheme textTheme = TextTheme(
  headlineLarge: TextStyle(
    fontFamily: GoogleFonts.karla().fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1,
    letterSpacing: -1,
  ),
  bodySmall: TextStyle(
    fontFamily: GoogleFonts.karla().fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.5,
    letterSpacing: 0,
  ),
  bodyMedium: TextStyle(
    fontFamily: GoogleFonts.karla().fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    height: 1.5,
    letterSpacing: 0,
  ),
  bodyLarge: TextStyle(
    fontFamily: GoogleFonts.karla().fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 1.5,
    letterSpacing: 0,
  ),
);

// Spacing
int spacing100 = 8;
int spacing150 = 12;
int spacing200 = 16;
int spacing300 = 24;
int spacing400 = 32;
int spacing500 = 40;
int spacing1600 = 128;

// Light Theme
ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: white,
    onPrimary: grey900,
    secondary: green600,
    onSecondary: white,
    tertiary: green200,
    onTertiary: white,
    surface: grey500,
    onSurface: white,
    error: red,
    onError: white,
  ),
  textTheme: textTheme,
);
