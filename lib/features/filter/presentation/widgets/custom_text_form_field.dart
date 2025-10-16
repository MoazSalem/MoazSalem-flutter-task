import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  const CustomTextFormField({super.key, this.label});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppTypography.labelLarge.copyWith(
          color: colorScheme.primaryFixedDim,
        ),
        filled: true,
        fillColor: colorScheme.surface,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes.p16,
          vertical: AppSizes.p12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.normalRoundedCorner),
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.normalRoundedCorner),
          borderSide: BorderSide(color: colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.normalRoundedCorner),
          borderSide: BorderSide(color: colorScheme.primaryFixedDim),
        ),
      ),
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
    );
  }
}
