import 'package:flutter/material.dart';
import 'package:whatsapp_proj/data/mydata.dart';
import 'package:whatsapp_proj/pages/chatdeatails.dart';

class ChatPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // don't start with two scaffold start by after scaffold
    return Container(
      color: Colors.black,
      child: ListView(
        children: [
        for(int i=0;i<mychat.length;i++)
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatDetails(
               name: mychat[i].name,
               img: mychat[i].img,
                message: mychat[i].massege,

              )));
            },
            title: Text(mychat[i].name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
            subtitle: Text(mychat[i].massege,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,

              ),
            ),
            trailing: Text(mychat[i].time,style: TextStyle(color: Colors.white),),
            leading: CircleAvatar(
              radius: 50,
              //child: Image.asset('assets/image/r1.jpg') ,
              backgroundImage: AssetImage(mychat[i].img),
            ),
          ),

        ],
      ),
    );
    
  }
}
