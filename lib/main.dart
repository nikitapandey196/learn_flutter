import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/app_screen.dart';

void main(){
  runApp(LearnFlutterApp());
}

class LearnFlutterApp extends StatelessWidget {
  const LearnFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppScreen()
      ,
    );
  }
}