
import 'package:flutter/material.dart';

customAppBar(String title){
  return AppBar(
        backgroundColor: Colors.black87,
        // centerTitle: true,
        title:  Text(
         title,
          style: const TextStyle(
            color: Colors.white,
            // backgroundColor: Colors.black
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            // decoration: TextDecoration.combine([
            //   TextDecoration.lineThrough,
            //   TextDecoration.underline
            // ]),
          ),
        ),
        leading: Icon(Icons.menu),

        // titleSpacing: 50,
        // toolbarHeight: 100
        // toolbarOpacity: 0.4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8))),
      );
}