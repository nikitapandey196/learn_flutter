import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int value=0;
  void increaseMyValue(){
     setState(() {
            value++;
          });
  }

   void decreaseMyValue(){
    if(value>0){
       setState(() {
            value--;
          });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    // print("UI rebuilding with value = $value");
    return   Scaffold(
      appBar: AppBar(
        title: Text("counter screen"),
      ),
      body: Center(
        child: Text('Current value is $value',style: TextStyle(
          fontSize: 18,fontWeight: FontWeight.bold        ),),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton:  Container(
        height: 55,
        width: 145,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xfb283048),
              Color(0xfb4a569d),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          ) ,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           IconButton(onPressed: decreaseMyValue, 
           icon: const Icon(Icons.remove),
           color: Colors.white,
           ),
           IconButton(onPressed: increaseMyValue,
            icon: const Icon(Icons.add),
           color: Colors.white,
           )
          ],
        ),
      )
    );
  }
}