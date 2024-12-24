import 'package:flutter/material.dart';
import 'package:islami_app/tabs/settings_tab/Langauge_bottom_sheet.dart';
import 'package:islami_app/tabs/settings_tab/Theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Theme",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFFB7935F), width: 2),
                borderRadius: BorderRadius.circular(
                  22,
                ),
              ),
              child: Text(
                "Light",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Language",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFFB7935F), width: 2),
                borderRadius: BorderRadius.circular(
                  22,
                ),
              ),
              child: Text(
                "English",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => ThemeBottomSheet());
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => LangaugeBottomSheet());
  }
}