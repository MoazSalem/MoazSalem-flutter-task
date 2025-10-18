import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/app.dart';

void main() {
  runApp(ScreenUtilInit(designSize: const Size(360, 690), child: const App()));
}
