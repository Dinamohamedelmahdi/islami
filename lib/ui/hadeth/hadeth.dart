import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/hadeth/hadethtitle.dart';
class Hadethtab extends StatefulWidget {

  @override
  State<Hadethtab> createState() => _HadethtabState();
}


class _HadethtabState extends State<Hadethtab> {

  List<Hadethargs> Allhadeth = [];
  void initState() {
    // TODO: implement initState
    super.initState();
    readhadethfile();
  }

  @override
  Widget build(BuildContext context) {


    return Column(children: [Image.asset("assets/images/"
        "59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png"),
      Expanded(child: Allhadeth.isEmpty
      ? Center(child: CircularProgressIndicator())
        : ListView.builder(
        itemBuilder:(context,index){
          return  Hadthtitle(Allhadeth[index]);
        },
        itemCount: Allhadeth.length,

      ))]);
  }

  void readhadethfile() async
  {
    String contentall = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> separatedHadeth =contentall.split("#");

    for (int i = 0; i < separatedHadeth.length; i++) {
      String singleHadeth = separatedHadeth[i];
      List<String> lines = singleHadeth.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
     Hadethargs h = Hadethargs(title, content);
      Allhadeth.add(h);
    }
    setState(() {});
  }

}

class Hadethargs
{
  String title ;
  String Content ;
  Hadethargs(this.title,this.Content);
}