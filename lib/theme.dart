import 'package:flutter/material.dart';

const backgroundColor = Color(0xFFE1D5C9);
const primaryColor = Color(0xFF202223);
const secondaryColor = Color(0xFFC49452);
const tertiaryColor = Color.fromARGB(255, 207, 198, 190);
const errorColor = Color(0xFF550022);
const neturalColor = Colors.white54;

const woodColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: neturalColor,
    secondary: secondaryColor,
    onSecondary: neturalColor,
    tertiary: tertiaryColor,
    error: errorColor,
    onError: neturalColor,
    background: backgroundColor,
    onBackground: neturalColor,
    surface: primaryColor,
    onSurface: neturalColor);
