
import 'package:flutter/material.dart';

class Themeproject
{
   final ThemeData lighttheme = ThemeData(

       bottomNavigationBarTheme:BottomNavigationBarThemeData(selectedItemColor: Colors.black,
       unselectedItemColor: Colors.white) ,
       scaffoldBackgroundColor: Colors.transparent,
       appBarTheme:
  AppBarTheme(backgroundColor: Colors.transparent,centerTitle: true,

      elevation: 0,titleTextStyle: TextStyle(fontSize: 32,color: Colors.black,)),
      colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF7935F),
          primary: Color(0XFF7935F),
          onPrimary:Colors.white,
          onSecondary: Colors.black));
  }