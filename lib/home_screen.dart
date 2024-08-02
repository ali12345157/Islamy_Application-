import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/pro/app_config_provider.dart';
import 'package:islamy/quran/quran_tab.dart';
import 'package:islamy/radio/radio_tab.dart';
import 'package:islamy/sebha/sebha_tab.dart';
import 'package:islamy/setting/setting_tab.dart';
import 'package:provider/provider.dart';

import 'hadeth/hadeth_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()
            ? Image.asset(
                'assets/image/background_dark.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )
            : Image.asset(
                'assets/image/main_background.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/image/icon_radio.png')),
                      label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/image/icon_sebha.png')),
                      label: AppLocalizations.of(context)!.sebha),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/image/icon_hadeth.png')),
                      label: AppLocalizations.of(context)!.hadeith),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/image/icon_quran.png')),
                      label: AppLocalizations.of(context)!.quran),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.setting),
                ]),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    HadethTab(),
    QuranTab(),
    SettingTab(),
  ];
}
