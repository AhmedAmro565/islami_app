import 'package:flutter/material.dart';
import 'package:islami_app/routes/routes.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/styles/my_theme_data.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,

      themeMode: ThemeMode.dark,




      routes: AppRoutes.routes,
      initialRoute: HomeScreen.routeName,
    );
  }
}
