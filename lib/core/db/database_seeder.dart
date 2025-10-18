import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSeeder {
  static Future<void> seedDatabase(Database db) async {
    // Check if already seeded
    final existing = await db.query('categories');
    if (existing.isNotEmpty) {
      if (kDebugMode) {
        print("Database already seeded");
      }
      return;
    }

    await _seedTable(db, 'categories');
    await _seedTable(db, 'subcategories');
    await _seedTable(db, 'ads');
    await _seedTable(db, 'ad_subcategories');
    await _seedTable(db, 'subscription_plans');

    if (kDebugMode) {
      print('Database seeded successfully');
    }
  }

  static Future<void> _seedTable(Database db, String tableName) async {
    final String data = await rootBundle.loadString(
      // make sure the path exists before this runs
      'assets/seeds/$tableName.json',
    );
    final List<dynamic> jsonList = jsonDecode(data);

    for (final item in jsonList) {
      await db.insert(tableName, item);
    }
  }
}
