import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextFormField(
      decoration: InputDecoration(
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
