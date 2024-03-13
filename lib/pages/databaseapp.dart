
import 'package:flutter/material.dart';
import 'package:whatsapp_proj/database/databaseuser.dart';
class DatabaseApp extends StatefulWidget {
  const DatabaseApp({Key? key}) : super(key: key);

  @override
  State<DatabaseApp> createState() => _DatabaseAppState();
}

class _DatabaseAppState extends State<DatabaseApp> {
  @override
  void initState() {

    super.initState();
    UserDB u=UserDB();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,

      ),
    );
  }
}
