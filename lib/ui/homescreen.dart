import 'package:flutter/material.dart';
import 'package:islami/main.dart';
import 'package:islami/ui/imageurl.dart';
import 'package:islami/bottomnavigationbaritem.dart';
import 'package:islami/ui/quran/quran.dart';
import 'package:islami/ui/hadeth/hadeth.dart';
import 'package:islami/ui/sebha.dart';
import 'package:islami/ui/radio.dart';


class Homescreen extends StatefulWidget {
  static const String routeName = 'home' ;

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selected = 0 ;

  @override
  Widget build(BuildContext context) {
    return

      Stack(children:[
        Image.asset(geturlimage('bg3.png')),

        Scaffold(appBar:
        AppBar(title: Text('Islami',textAlign:TextAlign.center,),
        ),
          body: tabs[selected],
          bottomNavigationBar:BottomNavigationBar(onTap:
              (index){selected = index;
          setState((){});},


              items: [
                Bottomnavbaritem('radio','radio.png'),
                Bottomnavbaritem('sebha','sebha.png'),
                Bottomnavbaritem('quran','quran.png'),
                Bottomnavbaritem('hadeth','quran-quran-svgrepo-com.png'),
              ]) ,)]);
  }

  var tabs =[Radiotab(),Sebhatab(),Hadethtab(),Qurantab()];
}
