import 'package:flutter/material.dart';
import 'package:islami_app/screens/sura_details_screen.dart';

// ignore: must_be_immutable
class SuraName extends StatelessWidget {
  SuraArgs suraArgs;

  SuraName({required this.suraArgs});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraArgs(title: suraArgs.title, index: suraArgs.index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          suraArgs.title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class SuraArgs {
  String title;
  int index;

  SuraArgs({
    required this.title,
    required this.index,
  });
}
