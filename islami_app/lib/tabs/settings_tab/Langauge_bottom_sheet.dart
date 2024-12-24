import 'package:flutter/material.dart';
import 'package:islami_app/widgets.dart';

class LangaugeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('English'),
          SizedBox(
            height: 20,
          ),
          getUnSelectedItem('Arabic'),
        ],
      ),
    );
  }
}
