import 'package:flutter/material.dart';

PreferredSizeWidget AppBar_1() {
  return AppBar(
    title: Text(Strings.MainTitle,),
  );
}

Widget getSelectedItem(String text) {
  return Row(
    children: [
      Text(
        text,
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0XFFB7935F)),
      ),
      Spacer(),
      Icon(
        Icons.check,
        color: Color(0XFFB7935F),
        size: 28,
        weight: 28,
      ),
    ],
  );
}

Widget getUnSelectedItem(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Color(0XFFB7935F)),
  );

  ;
}

class Images {



  static String ImagePath_1 = 'assets/images/islami_splash_screen.jpg';
  static String ImagePath_2 = 'assets/images/default_bg@2x.png';
  static String ImagePath_3 = 'assets/images/home_dark_background.png';


  static String quran = 'assets/images/quran.png';
  static String radio = 'assets/images/radio.png';
  static String sebha = 'assets/images/sebha.png';
  static String hadeth = 'assets/images/hadeth.png';
  static String quranHeader = 'assets/images/quran_header_icon.png';
  static String sebhaHeader = 'assets/images/sebha_header.png';
  static String hadethHeader = 'assets/images/hadith_header.png';
}

class Strings {
  static String MainTitle = 'إسلامي';
}
