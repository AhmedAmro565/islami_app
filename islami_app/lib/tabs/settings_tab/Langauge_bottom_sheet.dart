import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/widgets.dart';
import 'package:provider/provider.dart';

class LangaugeBottomSheet extends StatelessWidget {
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
                settingsprovider.changeLocal('en');
              },
              child: settingsprovider.currentLocal == ('en')
                  ? getSelectedItem('English')
                  : getUnSelectedItem('English')),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                settingsprovider.changeLocal('ar');
              },
              child: settingsprovider.currentLocal == ('ar')
                  ? getSelectedItem('Arabic')
                  : getUnSelectedItem('Arabic')),
        ],
      ),
    );
  }
}
