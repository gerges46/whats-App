import 'package:flutter/material.dart';
import 'package:whatsapp_proj/pages/call_page.dart';
import 'package:whatsapp_proj/pages/chat_page.dart';
import 'package:whatsapp_proj/pages/status_page.dart';
class MainScreen extends StatelessWidget {

  // to make varable in scafold that is from end drawer that is define in scafold
GlobalKey<ScaffoldState> sd=new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // to make tabs in app you should use default tab widget not scaffold
    return DefaultTabController(
        // length is how many tabs in app
        length: 4,
        // child put in it scaffold
        child:  Scaffold(
        key: sd,
        backgroundColor: Colors.white,
        appBar: AppBar(
          // the tab in bottom
          bottom: TabBar(
             labelColor: Colors.white,
            // tabs you put in it tabs when app start
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'chats',
              ),

              Tab(
                icon: Icon(Icons.call),
                text: 'call',
              ),
              Tab(
                icon: Icon(Icons.center_focus_strong_rounded),
                text: 'states',
              ),
             Icon(Icons.camera_alt),

             /* Text('chats'),
              Text('stats'),
              Text('calls'),*/

            ],

          ),
        backgroundColor: Colors.green,
        actions: [
        Container(
        width: 200,
        child: Center(
        child: TextFormField(

    ),
    ),
    ),
    Icon(Icons.search,color:Colors.white),
    IconButton(onPressed: (){
    // that is in your app found if he enddrawer use it
    sd.currentState!.openEndDrawer();
    },
    icon: Icon(Icons.menu),color: Colors.white,)
    ],
    title: Text("Whatsapp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.white),),

    ),
    //to make menu in end
    endDrawer: Drawer(
    child:
    //SafeArea(child: Text('dart')),
      ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text('Ahmed Ali'),
              accountEmail:Text('ahmed@gamil.com'),
          currentAccountPicture:CircleAvatar(
            backgroundImage: AssetImage('assets/image/r6.jpg'),
          ),
          ),
          
          Card(
            color: Colors.blue,
            child: ListTile(
              title: Text('My Account'),
              trailing: Icon(Icons.account_circle),
            ),
          ),
          Card(
            color: Colors.blue,
            child: ListTile(
              title: Text('Setting'),
              trailing: Icon(Icons.settings),
            ),
          ),
          Card(
            color: Colors.blue,
            child: ListTile(
              title: Text('Log out'),
              trailing: Icon(Icons.logout_sharp),
            ),
          ),
          Text('dart'),
        ],
      ),
    ),
          // what will show in every tab
          body: TabBarView(
            children: [
             ChatPage(),

             CallPage(),
             StatusPage(),
              Text('camera'),
            ],
          ),
        ),
    );
  }
}
