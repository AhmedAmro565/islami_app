import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadeth_tab/hadeth.dart';
import 'package:islami_app/widgets.dart';

class HadethDetailsScreen extends StatelessWidget {
  static String routeName = 'hadeth-details-screen';

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.ImagePath_2),
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
                          color: Color(0xFFDCD6CE)),
                      child: Center(
                        child: Text(
                          args.title,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      args.content,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.5, // Line height for better readability
                      ),
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
