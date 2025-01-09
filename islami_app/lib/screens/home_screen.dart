import 'package:flutter/material.dart';
import 'package:islami_app/styles/my_theme_data.dart';
import 'package:islami_app/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/tabs/sebha_tab/sebha.dart';
import 'package:islami_app/tabs/settings_tab/settings_tab.dart';
import 'package:islami_app/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  List<Widget> Tabs = [
    QuranTab(),
    SebhaTab(),
    HadethTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var settingsprovider = Provider.of<SettingProvider>(context);
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(settingsprovider.getBackGround()),
              fit: BoxFit
                  .cover, // Use BoxFit.cover to ensure it covers the screen
            ),
          ),
        ),
        // Foreground Content
        Scaffold(
          backgroundColor: Colors.transparent, // Make Scaffold transparent
          appBar: AppBar_1(),
          body: Tabs[selectedIndexTab],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            currentIndex: selectedIndexTab,
            onTap: (index) {
              setState(() {
                selectedIndexTab = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage(Images.quran)),
                label: AppLocalizations.of(context)!.quran_tab,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage(Images.sebha)),
                label: AppLocalizations.of(context)!.tasbeh_tab,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage(Images.hadeth)),
                label: AppLocalizations.of(context)!.hadeth_tab,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage(Images.radio)),
                label: AppLocalizations.of(context)!.radio_tab,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!
                    .settings_tab, // Access localized value here
              ),
            ],
          ),
        ),
      ],
    );
  }
}
