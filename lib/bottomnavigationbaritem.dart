
import 'package:flutter/material.dart';
import 'package:islami/ui/imageurl.dart';
import 'package:islami/themeofproject.dart';

class Bottomnavbaritem extends BottomNavigationBarItem
{




  Bottomnavbaritem(String item ,String iconpath,Color backgroundcolor) :
      super(icon:ImageIcon(AssetImage(geturlimage(iconpath))),label:item,
      backgroundColor:backgroundcolor );
}