import 'package:flutter/material.dart';

class Config extends ChangeNotifier {
  String _appLanguage = 'ar';  // Made appLanguage private
  String get appLanguage => _appLanguage;  // Added getter for appLanguage

  void changeLanguage(String newLanguage) {
    if (_appLanguage == newLanguage) return;

    _appLanguage = newLanguage;
    notifyListeners();
  }
}
