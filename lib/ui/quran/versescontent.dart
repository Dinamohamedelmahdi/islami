
import 'package:flutter/material.dart';

class Versescontent extends StatelessWidget {
String versesindex ;
int index ;
Versescontent(this.versesindex,this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
     '$versesindex {${index + 1 }}',
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
