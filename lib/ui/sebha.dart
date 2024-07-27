
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class Sebhatab extends StatefulWidget {



  @override
  State<Sebhatab> createState() => _SebhatabState();
}

class _SebhatabState extends State<Sebhatab> {
  List<String> doaa = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  String mydoaa = 'سبحان الله';
  int numberOfTasbe7 = 0;
  double angle =(pi* 20)/180;
  int i = 0;



  @override
  Widget build(BuildContext context) {
    return Container( alignment: Alignment.center,
      child: Column(mainAxisAlignment:MainAxisAlignment.center ,children: [Positioned(
          top:-2,
          right: 50,
          width: 60,
          height: 40,

          child:
          Image(image: AssetImage('assets/images/head of seb7a.png'))
      ),
        Container(
            padding: EdgeInsets.all(35),
            width: 250,
            height: 250,
            child: Transform.rotate(
                angle: angle,
                child: Image(
                    image: AssetImage('assets/images/body of seb7a.png')))

        ),

        Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Text('عدد التسبيحات',
                style: TextStyle(
                  fontSize: 30,
                ))),
        Container(
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(24)),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text('${numberOfTasbe7}',
                style: TextStyle(fontSize: 30)
            )
        ),
        ElevatedButton(
            onPressed: () {
              onPress();
            },
            style: ElevatedButton.styleFrom(
                padding:
                EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                backgroundColor: Colors.brown,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)) // background
            ),
            child: Text(mydoaa,
                style:TextStyle(
                    fontSize: 30,
                    color: Colors.black
                ) ))



      ],),
    );
  }
  void onPress() {

    numberOfTasbe7++;
    angle = angle + 0.1;
    setState(() {});

    if (numberOfTasbe7 == 33) {
      numberOfTasbe7 = 0;
      i++;
    }
    if (i == 1) {
      mydoaa = doaa[1];
      setState(() {});
    } else if (i == 2) {
      mydoaa = doaa[2];
      setState(() {});
    } else if (i == 3) {
      i = 0;
      mydoaa = doaa[0];
      setState(() {});
    }
  }



}
