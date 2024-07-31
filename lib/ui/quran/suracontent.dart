import 'package:flutter/material.dart';
import 'package:islami/ui/quran/chaptersnames.dart';
import 'package:islami/ui/defaultscreen.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/quran/versescontent.dart';
class Suracontent extends StatefulWidget {
  static const String routeName = 'sura';

  @override
  State<Suracontent> createState() => _SuracontentState();
}

class _SuracontentState extends State<Suracontent> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Suraargs;
    if (verses.isEmpty) readfiledata(args.suraindex);
    return Defaultscreen(Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Card(
        elevation: 24,
        margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
        child: verses.isNotEmpty
            ? ListView.builder(
                itemBuilder:(context,index){
                return  Versescontent(verses[index],index);
                },
                itemCount: verses.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    ));
  }

  void readfiledata(int fileindex) async {
    String filecontent =
        await rootBundle.loadString("assets/files/${fileindex + 1}.txt");
    List<String> lines = filecontent.trim().split("\n");

    setState(() {
      verses = lines;
      print(verses[0]);
    });
  }
}

class Suraargs {
  String title;
  int suraindex;
  Suraargs(this.title, this.suraindex);
}
