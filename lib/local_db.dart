// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqflite.dart';

class DbHelper {
  var emptyString = "";
  static const dbVersion = 1;
  static const loadDbVersion = 1;
  static Database? _database;
  static Database? _loadDatabase;

/*----------> For avoid the multiple class instance and this lines of
            code gives you a single private instance for global use <---------*/

  DbHelper._privateConstructor();

  static final DbHelper instance = DbHelper._privateConstructor();

/*-----------------------> For check the database availability <--------------*/

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDataBase();
    return _database;
  }

/*----> For database is not available then get db path and create table <-----*/

  initDataBase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "local.db");
    return await openDatabase(path, version: dbVersion, onCreate: _onCreate);
  }

/*----------------------> SQL Create Table Function <-------------------------*/

  Future _onCreate(Database db, int version) async {
//==============================================================================
// ** Contact Us Tables **
//==============================================================================

    await db.execute('''
      CREATE TABLE appRegistration (
      ID INTEGER PRIMARY KEY AUTOINCREMENT,
      GrpCode TEXT,
      CollegeId INTEGER,
      ColCode TEXT,
      SchoolId INTEGER,
      StudID TEXT,
      USerType INTEGER,
      UserName TEXT,
      Password TEXT,
      Mobile INTEGER,
      Email TEXT,
      RegistrationFee INTEGER,
      ModiDt TEXT,
        AdmnNo TEXT ,
            RollNo TEXT ,
            Name TEXT ,
            CourseId INTEGER ,
            BranchCode TEXT ,
            Sem TEXT ,
            AdmnType TEXT ,
            DOB TEXT ,
            // Gender Text ,
            // ParentName TEXT ,
            // PermAddress TEXT ,
            // Email TEXT ,
            // Nationality TEXT ,
            // MothTounge TEXT ,
            // Religion TEXT ,
            // Category TEXT ,
            // Mobile TEXT ,
            // ParentsMobile TEXT ,
            // Batch TEXT ,
            // AadharNo TEXT 
      )
      ''');

    // await db.execute('''
    //   CREATE TABLE App_Registration (
    //    SchoolId INTEGER,
    //         StudId INTEGER PRIMARY KEY AUTOINCREMENT,
    //         AdmnNo TEXT NULL,
    //         RollNo TEXT NULL,
    //         Name TEXT NULL,
    //         CourseId INTEGER NULL,
    //         BranchCode TEXT NULL,
    //         Sem TEXT NULL,
    //         AdmnType TEXT NULL,
    //         DOB TEXT NULL,
    //         Gender INTEGER NULL,
    //         ParentName TEXT NULL,
    //         PermAddress TEXT NULL,
    //         Email TEXT NULL,
    //         Nationality TEXT NULL,
    //         MothTounge TEXT NULL,
    //         Religion TEXT NULL,
    //         Category TEXT NULL,
    //         Mobile TEXT NULL,
    //         ParentsMobile TEXT NULL,
    //         Batch TEXT NULL,
    //         AadharNo TEXT NULL
    //   )
    //   ''');
  }

/*-------------> Functions For Insert, Query, Update and Delete <-------------*/

//==============================================================================
// ** Common Functions **
//==============================================================================

  Future<int?> insert(String tableName, Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db?.insert(
      tableName,
      row,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>?> queryAll(String tableName) async {
    Database? db = await instance.database;
    return await db?.query(
      tableName,
    );
  }


  Future<int?> updateQuery(
      String tableName,
      dynamic id,
      Map<String, dynamic> row, {
        String? columnName,
        required String where,
        required List<int> whereArgs,
      }) async {
    Database? db = await instance.database;
    var res = await db
        ?.update(tableName, row, where: "$columnName = ?", whereArgs: [id]);
    return res;
  }

  Future<int?> updateSpecificQuery(
      String tableName,
      String setColumnName,
      int value,
      String columnName,
      String id,
      ) async {
    Database? db = await instance.database;
    var res = await db?.rawUpdate(
      '''
  UPDATE $tableName
  SET $setColumnName = ?
  WHERE $columnName = ?
''',
      [value, id],
    );
    return res;
  }
}
