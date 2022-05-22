import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_add_card/screen/model/model.dart';

class DataBase {
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await initialDatabase();
  }

  initialDatabase() async {
    io.Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path);
    var database = await openDatabase(path, version: 1, onCreate: _onCreat);
    return database;
  }

  FutureOr<void> _onCreat(Database db, int version) {
    db.execute('''CREAT TABLE CART (
  id INTEGER PRIMARY KEY , 
   productid VERCHER UNIQUE,
    ProductName TEXT,
    initialPrice INTEGER,
    productImg TEXT,
    productPrice INTEGER,
    quantity INTEGER ,
    uniTag TEXT     
)''');
  }

  Future <DatabaseModel> insert(DatabaseModel)async{
    var dbClient= await database;
    return Container();
  }
}
