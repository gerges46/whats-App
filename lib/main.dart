import 'package:flutter/material.dart';
import 'package:whatsapp_proj/pages/databaseapp.dart';
import 'package:whatsapp_proj/pages/firstpage.dart';
import 'package:whatsapp_proj/pages/mainpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      // Set the background color here
      backgroundColor: Colors.green,
      primaryColor: Colors.lightGreen,
    ),
 // home: FirstAppState(),
  //  home:MainScreen() ,
    home: DatabaseApp(),

  ));
}

