import 'package:flutter/material.dart';
import 'package:islamy/Quran/quran.dart';
import 'package:islamy/Quran/sura.dart';
import 'package:islamy/home_screen.dart';
import 'package:islamy/pro/condig.dart';
import 'package:islamy/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Config(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Config>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Quran.routeName: (context) => Quran(name: ''),
        Sura.routeName: (context) => Sura(),
        SplashScreen.routeName: (context) => SplashScreen(),
      },
      locale: Locale(provider.appLanguage),  // Fixed Locale constructor usage
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
