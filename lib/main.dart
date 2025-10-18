import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/app.dart';
import 'package:otex/core/dependency_injection/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize the database
  await configureDependencies();
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690), // <--- Figma design size
      child: const App(),
    ),
  );
}
