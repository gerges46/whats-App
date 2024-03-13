import 'package:flutter/material.dart';
import 'package:whatsapp_proj/data/mydata3.dart';
class StatusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:18,left: 40),
          child: Text('Status',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
        ),
 for(int i=0;i<mystatus.length;i++)
   ListTile(
     title: Text(mystatus[i].name),
     subtitle: Text(mystatus[i].massage),
     leading:
     CircleAvatar(
       radius: 50,
       backgroundImage: AssetImage(mystatus[i].img),
     ),

   ),
      ],
    );
  }
}
