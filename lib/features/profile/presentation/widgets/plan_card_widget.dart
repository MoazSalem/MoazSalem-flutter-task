import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/profile/presentation/widgets/plan_card_title.dart';
import 'package:otex/features/profile/presentation/widgets/plan_perk.dart';
import 'package:otex/l10n/app_localizations.dart';

class PlanCardWidget extends StatelessWidget {
  final String planName;
  final List<int> perks;
  final bool isSelected;
  final bool isHighestViews;
  final bool isBestValue;
  const PlanCardWidget({
    super.key,
    required this.planName,
    required this.perks,
    required this.isSelected,
    this.isHighestViews = false,
    this.isBestValue = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final locale = AppLocalizations.of(context)!;
    final List<String> perksTitles = [
      locale.perk_0,
      locale.perk_1,
      locale.perk_2,
      locale.perk_3,
      locale.perk_4,
      locale.perk_5,
      locale.perk_6,
    ];
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
            child: PlanCardTitle(planName: planName, isSelected: isSelected),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
            child: Divider(
              thickness: AppSizes.dividerLargeThickness,
              color: colorScheme.outline,
            ),
          ),
          SizedBox(height: AppSizes.p4),
          ...List.generate(
            perks.length,
            (index) => Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: PlanPerk(
                icon: AppAssets.getPerkIcon(index: index),
                description: perksTitles[index],
              ),
            ),
          ),
          SizedBox(height: AppSizes.p4),
        ],
      ),
    );
  }
}
