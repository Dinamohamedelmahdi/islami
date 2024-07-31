import 'package:flutter/material.dart';

class Themeproject {
  static final Color lightPrimary = Color(0xFFB7935F);
  static final Color darkPrimary = Color(0xFF141A2E);
  static final Color darksecondry = Color(0xFFFACC1D);

  static const bool isdark = false;

  static final ThemeData lighttheme = ThemeData(
      textTheme: TextTheme(titleMedium: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
          titleSmall: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),
          bodyMedium: TextStyle(color:Colors.black,fontSize: 25),
          bodySmall: TextStyle(color:Colors.black,fontSize: 20),
          bodyLarge: TextStyle(color:Colors.black,fontSize: 30)),
      cardTheme: CardTheme(color: Colors.white, surfaceTintColor: null),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black, unselectedItemColor: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 32,
            color: Colors.black,
          )),
      colorScheme: ColorScheme.fromSeed(
          seedColor: lightPrimary,
          primary: lightPrimary,
          onPrimary: Colors.black,
          secondary: lightPrimary,
          onSecondary: Colors.white));

  static final ThemeData darktheme = ThemeData(
      textTheme: TextTheme(titleMedium: TextStyle(color:Colors.white,
          fontWeight: FontWeight.bold,fontSize: 30),
          titleSmall: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 30),
      bodyMedium: TextStyle(color:Colors.white,fontSize: 25) ,
  bodySmall: TextStyle(color:Colors.white,fontSize: 20),
        bodyLarge: TextStyle(color:Colors.white,fontSize: 30),  ),



      cardTheme: CardTheme(color:darkPrimary, surfaceTintColor: null),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkPrimary,
          selectedItemColor: darksecondry,
          unselectedItemColor: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 32,
            color: Colors.white,
          )),
      colorScheme: ColorScheme.fromSeed(
        secondary: darksecondry,
          seedColor: darkPrimary,
          primary: darkPrimary,
          onPrimary: Colors.white,
          onSecondary: darksecondry));
}
