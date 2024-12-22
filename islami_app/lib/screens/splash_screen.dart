import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/widgets.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = 'splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  Widget build(BuildContext context) {
    return Image.asset(
      Images.ImagePath_1,
      fit: BoxFit.fill,
    );
  }
}
