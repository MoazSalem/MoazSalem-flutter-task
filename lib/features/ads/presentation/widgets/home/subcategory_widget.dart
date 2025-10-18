import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/core/utils/app_assets.dart';
import 'package:otex/core/utils/translations_helper.dart';
import 'package:otex/features/catalog/domain/entities/subcategory.dart';

class SubcategoryWidget extends StatelessWidget {
  final Subcategory subcategory;
  final bool isSelected;
  final void Function()? onTap;
  const SubcategoryWidget({
    super.key,
    required this.subcategory,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.directional(end: AppSizes.p12),
      child: Material(
        color: isSelected
            ? Theme.of(context).colorScheme.secondaryFixedDim
            : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: AppSizes.p8,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppSizes.smallRoundedCorner,
                  ),
                ),
                height: AppSizes.subcategoryWidgetHeight,
                width: AppSizes.subcategoryWidgetWidth,
                child: Image.asset(
                  AppAssets.getImageByUrl(url: subcategory.imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                TranslationsHelper.getTranslation(context, subcategory.name),
                style: AppTypography.labelMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
