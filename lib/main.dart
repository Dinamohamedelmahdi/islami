import 'package:flutter/material.dart';
import 'package:islami/providers/localeprovider.dart';
import 'package:islami/providers/themeprovider.dart';
import 'package:islami/ui/splashscreen.dart';
import 'package:islami/ui/homescreen.dart';
import 'package:islami/themeofproject.dart';
import 'package:islami/ui/quran/suracontent.dart';
import 'package:islami/ui/homescreen.dart';
import 'package:islami/ui/hadeth/hadethcontenttab.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main()async {


  WidgetsFlutterBinding.ensureInitialized();
  var sharedPreferences= await SharedPreferences.getInstance();
  runApp    (MultiProvider( providers: [
   ChangeNotifierProvider(create: (_)  =>  Themeprovider(sharedPreferences)),

    ChangeNotifierProvider(create: (_)  =>  LocaleProvider(sharedPreferences))


  ],


      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Themeprovider themeprovider = Provider.of <Themeprovider> (context) ;
    LocaleProvider localeProvider = Provider.of <LocaleProvider> (context) ;

    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: Splashscreen.routeName,
      routes: {
        Splashscreen.routeName: (_) => Splashscreen(),
        Homescreen.routeName: (_) => Homescreen(),
        Suracontent.routeName: (_) => Suracontent(),
        Hadethcontenttab.routeName: (_) => Hadethcontenttab()
      },
      theme: Themeproject.lighttheme,
      darkTheme: Themeproject.darktheme,
      themeMode: themeprovider.currentTheme,
      locale: Locale(localeProvider.currentLocale),
    );
  }
}
