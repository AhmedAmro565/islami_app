import 'package:flutter/material.dart';
import 'package:islami_app/widgets.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbehCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(70),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Image.asset(Images.sebhaHeader)),
              Text(
                'عدد التسبيحات',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 206, 178, 136)),
                height: 70,
                width: 70,
                child: Center(
                    child: Text('$tasbehCounter',
                        style: TextStyle(color: Colors.black, fontSize: 25))),
              ),
              SizedBox(height: 5,),

              InkWell(
                onTap: () {
                  setState(() {
                    tasbehCounter++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFB7935F)),
                  child: Center(
                      child: Text(
                    'سبحان الله',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    tasbehCounter = 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFB7935F)),
                  child: Center(
                      child: Text(
                    'إعادة',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
