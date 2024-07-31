import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart' ;

String geturlimage (String imagename)
{

  return "assets/images/$imagename";


}

AppLocalizations getTranslations(BuildContext context)
{
  return AppLocalizations.of(context)! ;
}