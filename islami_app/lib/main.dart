import 'package:flutter/material.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/screens/sura_details_screen.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
            color: Colors.transparent),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(size: 45),
            unselectedIconTheme: IconThemeData(size: 32)),
      ),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
