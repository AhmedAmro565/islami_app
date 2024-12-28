import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = const Color(0XFFB7935F);
  static Color darkPrimaryColor = const Color(0XFF141A2E);
  static Color lightDividerColor = const Color(0XFFB7935F);
  static Color darkDividerColor = const Color(0XFFFACC1D);
  static bool isDarkSelected = true;

  static ThemeData lightTheme = ThemeData(
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      bodyMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
    ),
    cardColor: lightPrimaryColor,
    dividerColor: lightDividerColor,
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: Colors.black,
      ),
      color: Colors.transparent,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(size: 45),
      unselectedIconTheme: IconThemeData(size: 32),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.normal, color: Colors.yellow),
    ),
    dividerColor: darkDividerColor,
    cardColor: darkPrimaryColor,
    primaryColor: darkPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: Colors.white,
      ),
      color: Colors.transparent,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: Color(0XFFFACC1D),
      selectedIconTheme: IconThemeData(size: 45),
      unselectedIconTheme: IconThemeData(size: 32),
    ),
  );
}

// selected nav
