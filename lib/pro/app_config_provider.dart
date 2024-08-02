import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode appTheme = ThemeMode.light;

  AppConfigProvider() {
    loadPreferences();
  }

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    savePreferences();
    notifyListeners();
  }

  void changeTheme(ThemeMode newTheme) {
    if (appTheme == newTheme) {
      return;
    }
    appTheme = newTheme;
    savePreferences();
    notifyListeners();
  }

  bool isDarkMode() {
    return appTheme == ThemeMode.dark;
  }

  void loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    appLanguage = prefs.getString('appLanguage') ?? 'en';
    appTheme = (prefs.getString('appTheme') ?? 'light') == 'dark'
        ? ThemeMode.dark
        : ThemeMode.light;
    notifyListeners();
  }

  void savePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('appLanguage', appLanguage);
    prefs.setString('appTheme', appTheme == ThemeMode.dark ? 'dark' : 'light');
  }
}
