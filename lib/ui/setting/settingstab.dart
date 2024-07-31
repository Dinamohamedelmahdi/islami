import 'package:flutter/material.dart';
import 'package:islami/ui/imageurl.dart';
import 'package:islami/ui/setting/languagebottomsheet.dart';
import 'package:islami/ui/setting/themebuttomsheet.dart';
class Settingstab extends StatelessWidget {
  const Settingstab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 36.0,left: 12,right: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children:[
        Text(getTranslations(context).settings,style: Theme.of(context).textTheme.bodyMedium,),
        Divider(height: 12,color: Colors.transparent,),
        InkWell(
          onTap: (){
            showbottomthemesheet(context);
          },
          child: Container(width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.secondary,width: 2),
                borderRadius: BorderRadius.circular(18),
                color:  Theme.of(context).cardTheme.color
              ),
              child: Text(getTranslations(context).light,style: Theme.of(context).textTheme.bodyLarge?.
              copyWith(color: Theme.of(context).colorScheme.secondary)




                ,)),
        ),
            Divider(height: 12,color: Colors.transparent,),
        Text(getTranslations(context).language,style: Theme.of(context).textTheme.bodyMedium,),
            Divider(height: 12,color: Colors.transparent,),

          InkWell(onTap: (){

            showlanguagebottomsheet(context);
          },
              child: Container(width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).colorScheme.secondary,width: 2),
                      borderRadius: BorderRadius.circular(18),
                      color: Theme.of(context).cardTheme.color
                  ),
                  child: Text('English',style: Theme.of(context).textTheme.bodyLarge?.
                  copyWith(color: Theme.of(context).colorScheme.secondary,)),
              ),
            )

      ]




      ),
    );
  }


  void showbottomthemesheet(BuildContext context) {

showModalBottomSheet(context: context, builder: (context)
{return Themebottomsheet();


}) ;

  }

  void showlanguagebottomsheet(BuildContext context) {

    showModalBottomSheet(context: context, builder: (context)
    {return Languagebottomsheet();


    }) ;

  }

}

