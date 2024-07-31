import 'package:flutter/material.dart';
import 'package:islami/main.dart';
import 'package:islami/ui/defaultscreen.dart';
import 'package:islami/ui/imageurl.dart';
import 'package:islami/bottomnavigationbaritem.dart';
import 'package:islami/ui/quran/quran.dart';
import 'package:islami/ui/hadeth/hadeth.dart';
import 'package:islami/ui/sebha.dart';
import 'package:islami/ui/radio.dart';
import 'package:islami/ui/setting/settingstab.dart';


class Homescreen extends StatefulWidget {
  static const String routeName = 'home' ;

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedindex= 0 ;

  @override
  Widget build(BuildContext context) {
    return

      Defaultscreen(


        Scaffold(appBar:
        AppBar(title: Text(getTranslations(context).apptitle,textAlign:TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,),
        ),

          bottomNavigationBar:BottomNavigationBar(onTap:
              (index){selectedindex = index;
          setState((){});



              },
              currentIndex: selectedindex ,

              items: [

                Bottomnavbaritem(getTranslations(context).qurantab,'quran.png',Theme.of(context).primaryColor),
                Bottomnavbaritem(getTranslations(context).hadethtab,'hadethtab.png',Theme.of(context).primaryColor),

                Bottomnavbaritem(getTranslations(context).tasbehtab,'sebha.png',Theme.of(context).primaryColor),
                Bottomnavbaritem(getTranslations(context).radiotab,'radio.png',Theme.of(context).primaryColor),
               BottomNavigationBarItem(backgroundColor:Theme.of(context).primaryColor,
                   icon: const Icon(Icons.settings),label: getTranslations(context).settings)
              ]
          ) ,

          body: tabs[selectedindex],



        ));


  }

  var tabs =[Qurantab(),Hadethtab(),Sebhatab(),Radiotab(),Settingstab()];
}
