import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';

class SubcategoryWidget extends StatelessWidget {
  final String title;
  final String image;
  const SubcategoryWidget({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.directional(end: AppSizes.padding12),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: AppSizes.padding8,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppSizes.smallRoundedCorner,
                ),
              ),
              height: AppSizes.subcategoryWidgetHeight,
              width: AppSizes.subcategoryWidgetWidth,
              child: Image.asset(image, fit: BoxFit.fill),
            ),
            Text(title, style: AppTypography.labelMedium),
          ],
        ),
      ),
    );
  }
}
