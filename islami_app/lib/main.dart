import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';
import 'package:islami_app/styles/my_theme_data.dart';
import 'package:islami_app/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(), child: IslamiApp()));
}

class IslamiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: AppRoutes.routes,
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: settingsProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(settingsProvider.currentLocal),
      // Default locale, can be changed dynamically
    );
  }
}
