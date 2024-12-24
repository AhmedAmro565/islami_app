import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab/quran.dart';
import 'package:islami_app/tabs/radio_tab/radio.dart';
import 'package:islami_app/tabs/sebha_tab/sebha.dart';
import 'package:islami_app/widgets.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  List<Widget> Tabs = [
    RadioTab(),
    SebhaTab(),
    HadethTab(),
    QuranTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.ImagePath_2), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar_1(),
        body: Tabs[selectedIndexTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndexTab,
          onTap: (index) {
            selectedIndexTab = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFB7935F),
              icon: ImageIcon(AssetImage(Images.quran)),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFB7935F),
              icon: ImageIcon(AssetImage(Images.sebha)),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFB7935F),
              icon: ImageIcon(AssetImage(Images.hadeth)),
              label: 'Hadeth',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFFB7935F),
              icon: ImageIcon(AssetImage(Images.radio)),
              label: 'Radio',
            ),
          ],
        ),
      ),
    );
  }
}
