import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadeth_details_screen.dart';
import 'package:islami_app/tabs/hadeth_tab/hadeth_tab.dart';

class HadethTitleWideget extends StatelessWidget {
  Hadeth hadeth;
  HadethTitleWideget({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: Hadeth(title:hadeth.title, content: hadeth.content));
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(12),
          child: Text(hadeth.title,
              style: Theme.of(context).textTheme.titleMedium)),
    );
  }
}
