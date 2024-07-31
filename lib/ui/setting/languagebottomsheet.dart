
import 'package:flutter/material.dart';
import 'package:islami/providers/localeprovider.dart';
import 'package:provider/provider.dart';

class Languagebottomsheet extends StatelessWidget {
  const Languagebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {

    var localeProvider = Provider.of<LocaleProvider>(context) ;

    return Container(color: Theme.of(context).cardTheme.color,
      padding: EdgeInsets.all(24),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: (){
                localeProvider.changeLocale('en') ;
              },
              child:
              localeProvider.currentLocale == 'en' ?


              getselecteditem(context,'English'):
              getunselecteditem(context,'English')
          ),
          Divider(height: 24,color: Colors.transparent,),

          InkWell(

              onTap: (){
                localeProvider.changeLocale('ar') ;
              },

              child: localeProvider.currentLocale =='ar' ?
              getselecteditem(context,'العربيه'):
              getunselecteditem(context,'العربيه')),


        ],),
    );
  }

  Widget getselecteditem(BuildContext context,String text)
  {return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text,style: Theme.of(context).textTheme.bodyMedium?.
      copyWith(color: Theme.of(context).colorScheme.secondary),),
      Icon(Icons.check,color: Theme.of(context).colorScheme.secondary,)
    ],
  );
  }

  Widget getunselecteditem(BuildContext context,String text)
  {return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(text,style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    ) ;

  }





}
