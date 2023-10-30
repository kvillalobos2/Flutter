import 'package:nssystem/models/preference.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _db;
  static final int _version = 1;
  static final String _tableName = "preferences";

  static Future<void> initDb() async {
    if (_db != null) {
      return;
    }
    try {
      String _path = await getDatabasesPath() + 'preferences.db';
      _db = await openDatabase(_path,
        version: _version,
        onCreate: (db, version) {
          print("Create a new one ");
          return db.execute(
            "CREATE TABLE $_tableName("
                "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                "title STRING, date STRING, "
                "shift STRING, "
                "startTime STRING, endTime STRING)",
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }

  static Future<int> insert(Preference? preference) async{
    print("insert");
    return await _db?.insert(_tableName, preference!.toJson())??1;
  }
  static Future<List<Map<String, dynamic>>> query() async{
    print("query function call");
    return await _db!.query(_tableName);
  }
}