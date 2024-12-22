import 'package:flutter/material.dart';

PreferredSizeWidget AppBar_1() {
  return AppBar(
    title: Text(Strings.MainTitle),
  );
}

class Images {
  static String ImagePath_1 = 'assets/images/islami_splash_screen.jpg';
  static String ImagePath_2 = 'assets/images/default_bg@2x.png';

  static String quran = 'assets/images/quran.png';
  static String radio = 'assets/images/radio.png';
  static String sebha = 'assets/images/sebha.png';
  static String hadeth = 'assets/images/hadeth.png';
  static String quranHeader = 'assets/images/quran_header_icon.png';
  static String sebhaHeader = 'assets/images/sebha_header.png';
}

class Strings {
  static String MainTitle = 'إسلامي';
}
