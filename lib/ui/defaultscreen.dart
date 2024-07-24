
import 'package:flutter/material.dart';

import 'package:islami/ui/imageurl.dart';




class Defaultscreen extends StatelessWidget {

Widget body ;
  Defaultscreen(this.body);
  @override
  Widget build(BuildContext context) {
    return Stack(children:[
    Image.asset(geturlimage('bg3.png')),
 body]);

  }
}
