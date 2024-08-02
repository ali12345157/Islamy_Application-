import 'package:flutter/material.dart';
import 'package:islamy/app_colors.dart';

class MyThemeData {
  ///light mode , dark mode
  static final ThemeData lightMode = ThemeData(
    canvasColor: AppColors.primaryLightColor,
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppColors.blackColor,
      ),
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
      showUnselectedLabels: true,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: AppColors.blackColor,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        color: AppColors.blackColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static final ThemeData darkMode = ThemeData(
    canvasColor: AppColors.primaryDarkColor,
    primaryColor: AppColors.primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppColors.witheColor,
      ),
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.yellowColor,
      showUnselectedLabels: true,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: AppColors.witheColor,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
        color: AppColors.witheColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        color: AppColors.witheColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: AppColors.witheColor,
      ),
    ),
  );
}
