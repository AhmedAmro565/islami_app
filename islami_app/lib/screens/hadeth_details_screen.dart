import 'package:flutter/material.dart';
import 'package:islami_app/styles/my_theme_data.dart';
import 'package:islami_app/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static String routeName = 'hadeth-details-screen';

  @override
  Widget build(BuildContext context) {var settingsprovider = Provider.of<SettingProvider>(context);
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingsprovider.getBackGround()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        // Ensure background matches the container
        appBar: AppBar_1(),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(12),
            child: Card(
              color: Theme.of(context).cardColor,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFF7C6443)),
                      child: Center(
                        child: Text(
                          args.title,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      args.content,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
