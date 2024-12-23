import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  String quranText;

  QuranDetails({required this.quranText});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: Text(
          quranText,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ));
  }
}
