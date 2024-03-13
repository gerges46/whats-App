import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_proj/pages/mainpage.dart';



class FirstAppState extends StatefulWidget {
  const FirstAppState({Key? key}) : super(key: key);

  @override
  State<FirstAppState> createState() => _FirstAppStateState();
}

class _FirstAppStateState extends State<FirstAppState> {
  @override
  //  to manage start page temporary
  void initState() {

    super.initState();
    // the time when start page open
    Timer(Duration(seconds: 3),(){
      // to replace the start page and cant return to it
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MainScreen()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset('assets/image/pngwing.com.png',width: 60,height: 60,),
    );
  }
}
