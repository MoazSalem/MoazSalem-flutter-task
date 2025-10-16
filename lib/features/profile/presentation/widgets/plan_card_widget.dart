import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/profile/presentation/widgets/plan_card_title.dart';
import 'package:otex/features/profile/presentation/widgets/plan_perk.dart';

class PlanCardWidget extends StatelessWidget {
  final bool isSelected;
  final bool isHighestViews;
  final bool isBestValue;
  const PlanCardWidget({
    super.key,
    required this.isSelected,
    this.isHighestViews = false,
    this.isBestValue = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      color: colorScheme.surface,
      elevation: AppSizes.cardElevation,
      shadowColor: colorScheme.primaryFixedDim.withAlpha(60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.normalRoundedCorner),
        side: BorderSide(
          color: colorScheme.outline,
          width: AppSizes.borderWidth,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: AppSizes.p12,
              right: AppSizes.p12,
              top: AppSizes.p8,
            ),
            child: PlanCardTitle(
              isSelected: isSelected,
              isHighestViews: isHighestViews,
              isBestValue: isBestValue,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
            child: Divider(thickness: 1.5, color: colorScheme.outline),
          ),
          SizedBox(height: AppSizes.p4),
          PlanPerk(
            icon: AppAssets.perkTime,
            description: 'صلاحية الإعلان 30 يوم',
          ),
          SizedBox(height: AppSizes.p8),
        ],
      ),
    );
  }
}
