import 'package:flutter/material.dart';
import 'package:islami_app/tabs/settings_tab/Langauge_bottom_sheet.dart';
import 'package:islami_app/tabs/settings_tab/Theme_bottom_sheet.dart';
import 'package:islami_app/widgets.dart';

class SettingsTab extends StatefulWidget {
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
            'Theme',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Color(0XFFB7935F), width: 3)),
              child: Text('Light',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Language',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Color(0XFFB7935F), width: 3)),
              child: Text('English',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LangaugeBottomSheet());
  }
}
