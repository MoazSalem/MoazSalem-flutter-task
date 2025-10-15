import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';

class AppTypography {
  // prevent instantiation
  AppTypography._();

  static TextTheme get textTheme => TextTheme(
    headlineLarge: headlineLarge,
    headlineSmall: headlineSmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
  );

  static TextStyle? get headlineLarge =>
      TextStyle(fontSize: AppSizes.font16, fontWeight: FontWeight.bold);

  static TextStyle? get headlineSmall =>
      TextStyle(fontSize: AppSizes.font16, fontWeight: FontWeight.w500);

  static TextStyle get labelLarge =>
      TextStyle(fontSize: AppSizes.font14, fontWeight: FontWeight.w500);

  static TextStyle? get labelMedium =>
      TextStyle(fontSize: AppSizes.font12, fontWeight: FontWeight.w400);

  static TextStyle get labelSmall =>
      TextStyle(fontSize: AppSizes.font10, fontWeight: FontWeight.w400);

  static TextStyle? get titleMedium =>
      TextStyle(fontSize: AppSizes.font14, fontWeight: FontWeight.w500);

  static TextStyle get titleSmall =>
      TextStyle(fontSize: AppSizes.font10, fontWeight: FontWeight.w400);
}
