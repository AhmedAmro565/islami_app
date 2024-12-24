import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/hadeth_tab/hadeth_title.dart';
import 'package:islami_app/widgets.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) loadHadethFile();

    return ahadeth.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Image.asset(Images.hadethHeader),
                Container(
                  padding: EdgeInsets.all(12),

                  alignment: Alignment.center,
                  width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                width: 2, color: Color(0xFFB7935F)))),
                    child: Text(
                      'الأحاديث',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          HadethTitleWideget(hadeth: ahadeth[index]),
                      separatorBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 45.1),
                            color: Color(0xFFB7935F),
                            width: double.infinity,
                            height: 2,
                          ),
                      itemCount: ahadeth.length),
                )
              ],
            ),
          );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allAhadeth = fileContent.trim().split('#');
    for (int i = 0; i < allAhadeth.length; i++) {
      List<String> hadethOfLines = allAhadeth[i].trim().split('\n');
      String title = hadethOfLines[0];
      hadethOfLines.removeAt(0);
      String hadethContent = hadethOfLines.join('\n');
      Hadeth hadeth = Hadeth(title: title, content: hadethContent);
      ahadeth.add(hadeth);
    }

    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;
  Hadeth({required this.title, required this.content});
}
