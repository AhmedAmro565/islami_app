import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/widgets.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsprovider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingsprovider.changeTheme(ThemeMode.light);
              },
              child: settingsprovider.currentTheme == ThemeMode.light
                  ? getSelectedItem('Light')
                  : getUnSelectedItem('Light')),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              settingsprovider.changeTheme(ThemeMode.dark);
            },
            child: settingsprovider.currentTheme == ThemeMode.dark
                ? getSelectedItem('Dark')
                : getUnSelectedItem('Dark'),
          )
        ],
      ),
    );
  }
}
