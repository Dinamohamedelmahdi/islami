
import 'package:flutter/material.dart';
import 'package:islami/providers/themeprovider.dart';
import 'package:islami/themeofproject.dart';
import 'package:islami/ui/imageurl.dart';
import 'package:provider/provider.dart';

class Themebottomsheet extends StatefulWidget {
  const Themebottomsheet({super.key});

  @override
  State<Themebottomsheet> createState() => _ThemebottomsheetState();
}

class _ThemebottomsheetState extends State<Themebottomsheet> {
  @override
  Widget build(BuildContext context) {
     Themeprovider themeprovider = Provider.of <Themeprovider>(context);


    return Container(color: Theme.of(context).cardTheme.color,
      padding: EdgeInsets.all(24),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      InkWell(onTap: ()
          {

            setState(() {
             themeprovider.changeTheme(ThemeMode.light);
            });
          }
          ,

          child:
          themeprovider.isdarkenabled() ?
          getunselecteditem(context, getTranslations(context).light):

          getselecteditem(context,getTranslations(context).light)),
        Divider(height: 24,color: Colors.transparent,),
        InkWell(onTap: ()
    {

    setState(() {
      themeprovider.changeTheme(ThemeMode.dark);
    });
    },

            child:themeprovider.isdarkenabled() ?
            getselecteditem(context,getTranslations(context).dark):

            getunselecteditem(context, getTranslations(context).dark))


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
