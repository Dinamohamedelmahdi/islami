

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Themeprovider extends ChangeNotifier {


  ThemeMode currentTheme = ThemeMode.light;

  static const String isDarkTheme="theme";
  final SharedPreferences preferences;

  Themeprovider(this.preferences){
  //get saved language
  readSavedTheme();
  }

  void readSavedTheme(){

  var isDark=preferences.getBool(isDarkTheme)?? false;
  currentTheme=isDark? ThemeMode.dark:ThemeMode.light;
  }
  void saveTheme(){
  preferences.setBool(isDarkTheme, isdarkenabled());
  }


  void changeTheme(ThemeMode newTheme){
  currentTheme= newTheme;
  notifyListeners();
  saveTheme();
  }









bool isdarkenabled()


{

  return currentTheme == ThemeMode.dark ;
}

}