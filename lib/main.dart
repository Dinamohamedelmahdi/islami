import 'package:flutter/material.dart';
import 'package:islami/ui/splashscreen.dart';
import 'package:islami/ui/homescreen.dart';
import 'package:islami/themeofproject.dart';
import 'package:islami/ui/quran/suracontent.dart';
import 'package:islami/ui/homescreen.dart';
import 'package:islami/ui/hadeth/hadethcontenttab.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: Splashscreen.routeName,
        routes: {Splashscreen.routeName: (_) => Splashscreen(),
          Homescreen.routeName:(_) => Homescreen(),
      Suracontent.routeName:(_) => Suracontent(),
          Hadethcontenttab.routeName:(_) => Hadethcontenttab() },
    theme: Themeproject().lighttheme ,

    );
  }


}