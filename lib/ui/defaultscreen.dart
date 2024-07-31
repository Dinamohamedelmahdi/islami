
import 'package:flutter/material.dart';
import 'package:islami/providers/themeprovider.dart';
import 'package:islami/themeofproject.dart';

import 'package:islami/ui/imageurl.dart';
import 'package:provider/provider.dart';




class Defaultscreen extends StatelessWidget {

Widget body ;
  Defaultscreen(this.body);
  @override
  Widget build(BuildContext context) {
    Themeprovider provider =Provider.of<Themeprovider>(context) ;
    bool isDark = provider.isdarkenabled() ;
    return Stack(children:[
    Image.asset(geturlimage(  isDark? "darkbg.png" : "bg3.png"))
      ,
 body]);

  }
}
