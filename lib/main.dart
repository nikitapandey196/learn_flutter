import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(),);
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       //actionsIconTheme: IconThemeData(color: Colors.black), :used to change coloue of the icon
       elevation: 10,
        toolbarHeight: 60,
        backgroundColor: Colors.green,
        title: Text("Home"), 
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.notifications),Padding(
          padding: const EdgeInsets.only(right: 10,left: 10),
          child: Icon(Icons.call),
        ),Padding(
          padding: const EdgeInsets.only(right: 10,left: 6),
          child: Icon(Icons.mail),
        )],//used to center the title
        ),
        );//scaffold is a class used to design screen 
  }
}