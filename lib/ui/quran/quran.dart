
import 'package:flutter/material.dart';
import 'package:islami/ui/imageurl.dart';
import 'package:islami/ui/quran/chaptersnames.dart';
class Qurantab extends StatelessWidget {

  var chapters =["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(geturlimage('Screenshot (1).png')),
    Divider(thickness: 2,color: Colors.black,indent: 10,endIndent: 10,),
      Text('Suranames',style: TextStyle(fontSize: 30),),
      Divider(thickness: 2,color: Colors.black,indent: 10,endIndent: 10,),
      Expanded(child:ListView.separated(
          itemBuilder: (context,index){return Chaptersnames(chapters[index],index);},
          separatorBuilder: (context,index){
            return Container(width: 15,height: 2,color:Colors.black ,);},
          itemCount: chapters.length))

    ],);
  }
}
