import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/pro/app_config_provider.dart';
import 'package:islamy/quran/sura_detail.dart';
import 'package:provider/provider.dart';

import 'hadeth/hadeth_detail.dart';
import 'home_screen.dart';
import 'my_theme_data.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppConfigProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
      themeMode: provider.appTheme,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDetail.routName: (context) => SuraDetail(),
        HadethDetail.routName: (context) => HadethDetail(),
      },
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
