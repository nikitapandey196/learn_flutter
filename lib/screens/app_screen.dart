import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/home.dart';
import 'package:learn_flutter/screens/profile.dart';
import 'package:learn_flutter/screens/widgets.dart';
import 'package:learn_flutter/shared/customAppbar.dart';

class AppScreen extends StatefulWidget {
  AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
int currentscreen=1;
List<dynamic> screens=[
  HomeScreen(),
  ProfileScreen(),
  WidgetScreen()
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(onTap: (value) {
        //set state is used to rebuild the whole widget
        setState(() {
          currentscreen=value;
        })
         ;
      }, 
        currentIndex: currentscreen ,iconSize: 30,
        selectedItemColor: Colors.red,//change the colour of selected icon in navigation bar
        unselectedItemColor: Colors.black,//defaultcolour of navigation bar
          backgroundColor: Colors.white,
          //to add items in bottom navigation bar
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.widgets), label: "Widgets"),
          ]),
      backgroundColor: Color.fromARGB(255, 240, 190, 190),
      appBar: customAppBar("Learn-Flutter"),
      body:screens[currentscreen],
    );

      }
}
    
  

