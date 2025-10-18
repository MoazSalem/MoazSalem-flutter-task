import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';

class AppTypography {
  // prevent instantiation
  const AppTypography._();

  static const Color _lightTextColor = Color(0xff090F1F);

  static TextTheme get lightTextTheme => TextTheme(
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
  );

  static TextStyle get headlineLarge => TextStyle(
    fontSize: AppSizes.font24,
    fontWeight: FontWeight.w500,
    color: _lightTextColor,
  );

  static TextStyle get headlineMedium => TextStyle(
    fontSize: AppSizes.font16,
    fontWeight: FontWeight.bold,
    color: _lightTextColor,
  );

  static TextStyle get headlineSmall => TextStyle(
    fontSize: AppSizes.font16,
    fontWeight: FontWeight.w500,
    color: _lightTextColor,
  );

  static TextStyle get labelLarge => TextStyle(
    fontSize: AppSizes.font14,
    fontWeight: FontWeight.w500,
    color: _lightTextColor,
  );

  static TextStyle get labelMedium => TextStyle(
    fontSize: AppSizes.font12,
    fontWeight: FontWeight.w400,
    color: _lightTextColor,
  );

  static TextStyle get labelSmall => TextStyle(
    fontSize: AppSizes.font10,
    fontWeight: FontWeight.w400,
    color: _lightTextColor,
  );

  static TextStyle get titleLarge => TextStyle(
    fontSize: AppSizes.font16,
    fontWeight: FontWeight.w700,
    color: _lightTextColor,
  );

  static TextStyle get titleMedium => TextStyle(
    fontSize: AppSizes.font14,
    fontWeight: FontWeight.w500,
    color: _lightTextColor,
  );

  static TextStyle get titleSmall => TextStyle(
    fontSize: AppSizes.font10,
    fontWeight: FontWeight.w400,
    color: _lightTextColor,
  );

  static TextStyle get bodyLarge => TextStyle(
    fontSize: AppSizes.font14,
    fontWeight: FontWeight.w400,
    color: _lightTextColor,
  );

  static TextStyle get bodyMedium => TextStyle(
    fontSize: AppSizes.font12,
    fontWeight: FontWeight.w500,
    color: _lightTextColor,
  );
}
