import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_typography.dart';

class AppTheme {
  // prevent instantiation
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primary: Color(0xff090F1F),
      primaryFixed: Color(0x80090F1F),
      primaryFixedDim: Color(0x80000000),
      primaryContainer: Color(0x0D000000),
      secondary: Color(0xFFF95B1C),
      secondaryFixed: Color(0xFFFF4144),
      secondaryFixedDim: Color(0x0DF95B1C),
      secondaryContainer: Color(0xFFFFDBDB),
      tertiary: Color(0xFF0062E2),
      tertiaryFixed: Color(0xFF3A813F),
      tertiaryFixedDim: Color(0xFF3B4CF2),
      outlineVariant: Color(0x0D3A813F),
      tertiaryContainer: Color(0x0D0079FE),
      onTertiaryContainer: Color(0xFF0079FE),
      outline: Color(0x16000000),
      surface: Color(0xffffffff),
      onSurface: Color(0xff090F1F),
      surfaceContainer: Color(0xffF7F7F7),
    ),

    fontFamily: 'Tajawal',
    textTheme: AppTypography.lightTextTheme,
  );
}
