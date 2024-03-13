
import 'package:sqflite/sqflite.dart';

class UserDB{
  late Database db;
  UserDB(){
   createDatabaseTable();
  }
  createDatabaseTable()async
  {
    db= await openDatabase(
      'd.db',
      version: 1,
      onCreate: (Database d,int i)async{
       await d.execute('create table user (id integer primary key,'
           'username text, password text,department text)');
       print('table user created');
      },
      onOpen: (Database d){
        print('Database Opened');
      }
    );
  }
}