import 'package:flutter/material.dart';
import 'package:islami/ui/imageurl.dart';
import 'package:islami/ui/homescreen.dart';
class Splashscreen extends StatelessWidget {

static const String routeName = 'splash' ;
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Homescreen.routeName);
      // code to be executed after 2 seconds
    });


    return Scaffold(body:

    Container( child: Image.asset(
        geturlimage('splash (1).png'),fit: BoxFit.fill,

    width:double.infinity,height:double.infinity ,))
      
      
      ,);
  }
}


