import 'package:flutter/material.dart';
import 'package:islami_app/widgets.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocal = 'en';

  void changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  void changeLocal(String newLocal) {
    if (currentLocal == newLocal) return;
    currentLocal = newLocal;
    notifyListeners();
  }

  String getBackGround() {
    return currentTheme == ThemeMode.light
        ? Images.LightBackGround
        : Images.DarkBackGround;
  }
}
