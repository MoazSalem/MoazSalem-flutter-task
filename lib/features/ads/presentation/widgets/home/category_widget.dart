import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/core/utils/translations_helper.dart';

class CategoryWidget extends StatelessWidget {
  final String name;
  final bool isSelected;
  final void Function()? onTap;
  const CategoryWidget({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
      onTap: onTap,
      child: Material(
        color: isSelected ? colorScheme.secondaryFixedDim : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
          side: BorderSide(
            color: colorScheme.outline,
            width: AppSizes.borderWidth,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.p12),
            child: Text(
              TranslationsHelper.getTranslation(context, name),
              style: AppTypography.labelLarge.copyWith(
                color: isSelected
                    ? colorScheme.secondary
                    : colorScheme.primaryFixed,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
