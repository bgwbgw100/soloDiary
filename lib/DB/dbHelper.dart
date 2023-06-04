import 'package:solodiary/DB/noneLoginUserModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';



class DBHelper {
  static final DBHelper instance = DBHelper._instance();

  Database? _database;

  DBHelper._instance() {
    _initDataBase();
  }

  Future<Database> get database async {
    if ( _database != null ) return _database!;
    await _initDataBase();
    return _database!;
  }

  factory DBHelper() {
    return instance;
  }

  Future<void> _initDataBase() async {
    var dataBasePath = await getDatabasesPath();
    String path = join(dataBasePath, 'userDB.db');
    _database = await openDatabase(path,version: 1,onCreate: _databaseCreate);
  }


  void _databaseCreate(Database db, int version) async {
    await db.execute('''
       CREATE TABLE Test(
          _id integer primary key autoincrement,
          name text not null,
          title text not null,
          overview text,
          udate text not null,
          wdate text not null
          )
    ''');
  }

  void closeDataBase() async {
    if ( _database != null ) await _database!.close();
  }

}