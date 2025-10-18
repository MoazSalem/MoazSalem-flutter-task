import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/core/db/database_seeder.dart';
import 'package:sqflite/sqflite.dart';

// This is the function injectable will call to dispose of the DB
Future<void> disposeDatabase(Database db) async {
  await db.close();
}

@module
abstract class DatabaseModule {
  @preResolve
  @Singleton(dispose: disposeDatabase)
  Future<Database> get database async {
    final dbPath = await getDatabasesPath();
    final path = "$dbPath/app_database.db";
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await _createDB(db, version);
        // seed all tables right after creation
        await DatabaseSeeder.seedDatabase(db);
      },
    );
  }

  // create database tables (5 tables)
  static Future<void> _createDB(Database db, int version) async {
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

    if (kDebugMode) {
      print('Database created successfully');
    }
  }
}
