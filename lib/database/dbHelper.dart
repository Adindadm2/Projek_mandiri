import 'package:sqflite/sqflite.dart';

class User {
  final String username;
  final String password;

  User({required this.username, required this.password});
}

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = await getDatabasesPath() + 'login';
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY,
        username admin,
        password 12345
      )
    ''');
  }

  Future<int> insertUser(User user) async {
    Database db = await instance.database;
    return await db.insert('users', {
      'username': user.username,
      'password': user.password,
    });
  }

  Future<User?> getUser(String username, String password) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db.query(
      'users',
      where: 'username = ? AND password = ?',
      whereArgs: [username, password],
      limit: 1,
    );
    if (result.isNotEmpty) {
      return User(
        username: result.first['username'],
        password: result.first['password'],
      );
    }
    return null;
  }
}
