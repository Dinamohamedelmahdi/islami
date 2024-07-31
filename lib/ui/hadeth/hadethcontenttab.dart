
import 'package:flutter/material.dart';
import 'package:islami/ui/defaultscreen.dart';
import 'package:islami/ui/hadeth/hadeth.dart';
import 'package:islami/ui/hadeth/hadethtitle.dart';
class Hadethcontenttab extends StatelessWidget {

  static const String routeName = 'hadethcontent';

  @override
  Widget build(BuildContext context) {
    Hadethargs allhadeth = ModalRoute.of(context)?.settings.arguments as Hadethargs;
    return Defaultscreen(Scaffold(appBar: AppBar(title: Text(allhadeth.title),),

    body: Card(

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        elevation: 24,
        margin: const EdgeInsets.symmetric(vertical: 64,horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Text(allhadeth.Content,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ),
          ],
        )
    ),







      ));
  }
}
