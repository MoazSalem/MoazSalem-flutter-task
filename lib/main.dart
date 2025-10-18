import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/app.dart';
import 'package:otex/core/db/app_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDatabase.instance.database;
  runApp(ScreenUtilInit(designSize: const Size(360, 690), child: const App()));
}
