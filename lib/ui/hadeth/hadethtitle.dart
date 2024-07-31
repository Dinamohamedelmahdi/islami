import 'package:flutter/material.dart';
import 'package:islami/ui/hadeth/hadethcontenttab.dart';
import 'package:islami/ui/hadeth/hadeth.dart';
class Hadthtitle extends StatelessWidget {
 Hadethargs hadeth ;
 Hadthtitle(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap:(){Navigator.pushNamed(context, Hadethcontenttab.routeName,
        arguments:hadeth );},
        child:Text(hadeth.title,style: Theme.of(context).textTheme.bodyMedium,
    textAlign: TextAlign.center,

    ));
  }
}
