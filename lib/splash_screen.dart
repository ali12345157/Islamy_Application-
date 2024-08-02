import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';
// Adjust path as necessary

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Set a timer to navigate to the next screen after a few seconds
    Timer(Duration(seconds: 3), () {
      // Use Navigator.pushReplacementNamed for named routes
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/image/splash_screen.png',
          fit: BoxFit.cover, // Use BoxFit.cover to fit the image to the screen
          width: MediaQuery.of(context).size.width, // Optional: Set width to screen width
          height: MediaQuery.of(context).size.height, // Optional: Set height to screen height
        ),
      ),
    );
  }
}
