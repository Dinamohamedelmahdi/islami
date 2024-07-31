
import 'package:flutter/material.dart';
import 'package:islami/ui/quran/suracontent.dart';

class Chaptersnames extends StatelessWidget {
int suraindex ;
String title ;
Chaptersnames(this.title,this.suraindex);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap:(){Navigator.pushNamed(context,Suracontent.routeName,
        arguments:Suraargs(title,suraindex) );},
        child:Text(title,style: Theme.of(context).textTheme.bodyMedium,
    textAlign: TextAlign.center,));
  }
}
