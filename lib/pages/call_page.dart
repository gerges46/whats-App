import 'package:flutter/material.dart';
import 'package:whatsapp_proj/data/mydata2.dart';
class CallPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       for(int i=0;i<mycall.length;i++)
         ListTile(
           title: Text(mycall[i].name,style: TextStyle(color: Colors.black,fontSize:25),),
           subtitle: Text(mycall[i].massege),
           trailing: mycall[i].time,
           leading: CircleAvatar(
             radius: 50,
             backgroundImage: AssetImage(mycall[i].img),
           ),
         ),
      ],
    );
  }
}
