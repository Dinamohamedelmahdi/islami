
import 'package:flutter/material.dart';
import 'package:islami/ui/imageurl.dart';

class Bottomnavbaritem extends BottomNavigationBarItem
{
  Bottomnavbaritem(String item ,String iconpath) :
      super(icon:ImageIcon(AssetImage(geturlimage(iconpath))),label:item,
      backgroundColor: Colors.brown);
}