import 'package:flutter/material.dart';
import 'package:islamy/Hadeth/Hadeth.dart'; // Adjust path as necessary
import 'package:islamy/Quran/quran.dart'; // Adjust path as necessary
import 'package:islamy/Sebha/sebha_tab.dart'; // Adjust path as necessary
import 'package:islamy/Radio/radio_tab.dart'; // Adjust path as necessary
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/settings/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/photos/background.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Text(
                  AppLocalizations.of(context)!.app_title,
                  style: TextStyle(fontSize: 30),
                ),
                centerTitle: true,
              ),
              Expanded(
                child: Center(
                  child: _getSelectedScreen(selected),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xffB7935F),
            icon: ImageIcon(
              AssetImage('assets/photos/moshaf_blue.png'),
              color: selected == 0 ? Colors.black : Colors.white,
            ),
            label: AppLocalizations.of(context)!.quran,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/photos/ahadeth_icon.png'),
              color: selected == 1 ? Colors.black : Colors.white,
            ),
            label: AppLocalizations.of(context)!.hadeth,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/photos/sebha_blue.png'),
              color: selected == 2 ? Colors.black : Colors.white,
            ),
            label: AppLocalizations.of(context)!.sebha,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/photos/radio_icon.png'),
              color: selected == 3 ? Colors.black : Colors.white,
            ),
            label: AppLocalizations.of(context)!.radio,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: AppLocalizations.of(context)!.settings,
          ),
        ],
      ),
    );
  }

  Widget _getSelectedScreen(int index) {
    switch (index) {
      case 0:
        return Quran(name: ''); // Adjust parameters as per your Quran widget
      case 1:
        return Hadeth(); // Adjust as per your Hadeth widget
      case 2:
        return SebhaTab(); // Adjust as per your SebhaTab widget
      case 3:
        return RadioTab(); // Adjust as per your RadioTab widget
      default:
        return SettingsTab(); // Adjust as per your SettingsTab widget
    }
  }
}
