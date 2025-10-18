import 'package:sqflite/sqflite.dart';

class AppDatabase {
  // create a singleton
  static final AppDatabase instance = AppDatabase._init();
  static Database? _db;
  AppDatabase._init();

  // get database instance and initialize database if not initialized
  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB('app_database.db');
    return _db!;
  }

  // initialize database
  Future<Database> _initDB(String databaseName) async {
    final dbPath = await getDatabasesPath();
    final path = "$dbPath/$databaseName";
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  // create database tables (5 tables) and then insert initial data
  Future<void> _createDB(Database db, int version) async {
    // categories
    await db.execute('''
      CREATE TABLE categories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      );
    ''');

    // subcategories
    await db.execute('''
      CREATE TABLE subcategories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        categoryId INTEGER NOT NULL,
        imageUrl TEXT NOT NULL,
        FOREIGN KEY (categoryId) REFERENCES categories (id) ON DELETE CASCADE
      );
    ''');

    // ads
    await db.execute('''
      CREATE TABLE ads (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        originalPrice REAL NOT NULL,
        discountedPrice REAL NOT NULL,
        imageUrl TEXT NOT NULL,
        soldCount INTEGER NOT NULL
      );
    ''');

    // many-to-many relation between ads and subcategories
    await db.execute('''
  CREATE TABLE ad_subcategories (
    adId INTEGER NOT NULL,
    subcategoryId INTEGER NOT NULL,
    PRIMARY KEY (adId, subcategoryId),
    FOREIGN KEY (adId) REFERENCES ads (id) ON DELETE CASCADE,
    FOREIGN KEY (subcategoryId) REFERENCES subcategories (id) ON DELETE CASCADE
  );
''');

    // subscription plans
    await db.execute('''
      CREATE TABLE subscription_plans (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      description TEXT NOT NULL,
      price REAL NOT NULL,
      perks TEXT NOT NULL,
      viewsMultiplier INTEGER,
      bestValue INTEGER DEFAULT 0,
      highestViews INTEGER DEFAULT 0
    );
    ''');

    // TODO: insert initial data
  }
}
