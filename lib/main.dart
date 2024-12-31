import 'package:flutter/material.dart';
import 'package:islami_task_one/radio_screen.dart';
import 'package:islami_task_one/second_radio_screen.dart';
import 'sebha_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SecondRadioScreen(),
    routes: {
       SebhaScreen.routeName:(_)=>SebhaScreen(),
      RadioScreen.routeName:(_)=>RadioScreen(),
      SecondRadioScreen.routeName:(_)=>SecondRadioScreen(),
      },
    );
  }
}
