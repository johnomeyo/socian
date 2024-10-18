// utils/theme.dart
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.purple,
  buttonTheme: const ButtonThemeData(buttonColor: Colors.purple),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);

/*
// utils/theme.dart
import 'package:flutter/material.dart';

const Color primaryColor = Colors.purple;
const Color accentColor = Colors.purpleAccent;
const Color backgroundColor = Colors.white;
const Color textColor = Colors.black87;
const Color buttonTextColor = Colors.white;
const Color errorColor = Colors.redAccent;

final ThemeData appTheme = ThemeData(
  useMaterial3: true, // Enables Material 3 features
  primaryColor: primaryColor,
  scaffoldBackgroundColor: backgroundColor,

  // App-wide color scheme
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.purple, // Generates primary, accent, etc.
    accentColor: accentColor,
    backgroundColor: backgroundColor,
    errorColor: errorColor,
  ).copyWith(
    primary: primaryColor,
    secondary: accentColor,
    onPrimary: buttonTextColor,
    onSecondary: backgroundColor,
    onError: Colors.white,
  ),

  // Button styles across the app
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: buttonTextColor,
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),

  // Text styles throughout the app
  textTheme: TextTheme(
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: primaryColor,
    ),
    headlineMedium: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: primaryColor,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: textColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: textColor.withOpacity(0.7),
    ),
    labelLarge: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: buttonTextColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: textColor.withOpacity(0.6),
    ),
  ),

  // Input fields styling
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[100],
    contentPadding:
        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: primaryColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: primaryColor.withOpacity(0.5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: primaryColor, width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: errorColor),
    ),
    hintStyle: TextStyle(
      color: Colors.grey[600],
    ),
    labelStyle: const TextStyle(
      color: primaryColor,
      fontWeight: FontWeight.w500,
    ),
  ),

  // Button themes (general)
  buttonTheme: ButtonThemeData(
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),

  // Snackbar theme
  snackBarTheme: const SnackBarThemeData(
    backgroundColor: primaryColor,
    contentTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
    ),
  ),

  // Floating action button theme
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primaryColor,
    foregroundColor: buttonTextColor,
  ),

  // App bar theme
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: buttonTextColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
);

*/