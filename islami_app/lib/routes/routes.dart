import 'package:flutter/material.dart';
import '../screens/hadeth_details_screen.dart';
import '../screens/home_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/sura_details_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    HomeScreen.routeName: (context) => HomeScreen(),
    SplashScreen.routeName: (context) => SplashScreen(),
    SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
    HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
  };
}
