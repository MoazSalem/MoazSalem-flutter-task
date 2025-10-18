import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/utils/app_assets.dart';
import 'package:otex/features/user/presentation/widgets/plan_card_title.dart';
import 'package:otex/features/user/presentation/widgets/plan_perk.dart';
import 'package:otex/features/user/presentation/widgets/ribbon_widget.dart';
import 'package:otex/features/user/presentation/widgets/view_multiplier_widget.dart';
import 'package:otex/l10n/app_localizations.dart';

class PlanCardWidget extends StatelessWidget {
  final String planName;
  final List<int> perks;
  final int? viewsMultiplier;
  final bool isSelected;
  final bool isHighestViews;
  final bool isBestValue;
  const PlanCardWidget({
    super.key,
    required this.planName,
    required this.perks,
    this.viewsMultiplier,
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
    return Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Space to align with the ribbon
            SizedBox(height: AppSizes.p16),
            Card(
              color: colorScheme.surface,
              elevation: AppSizes.cardElevation,
              shadowColor: colorScheme.primaryFixedDim.withAlpha(60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  AppSizes.normalRoundedCorner,
                ),
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
                      planName: planName,
                      isSelected: isSelected,
                    ),
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
                        isIn48Hour: [2, 6].contains(perks[index]),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizes.p4),
                ],
              ),
            ),
          ],
        ),
        if (isBestValue || isHighestViews)
          Positioned.directional(
            top: 0,
            start: 0,
            textDirection: Directionality.of(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.p4),
              child: RibbonWidget(
                text: isBestValue ? locale.best_value : locale.highest_views,
                ribbonColor: colorScheme.secondaryContainer,
                height: AppSizes.ribbonHeight,
                width: isBestValue
                    ? AppSizes.ribbonWidth
                    : AppSizes.ribbonMinWidth,
                // Locale name to rotate the ribbon based on the locale
                localeName: locale.localeName,
              ),
            ),
          ),
        if (viewsMultiplier != null)
          Positioned.directional(
            end: AppSizes.p24,
            textDirection: Directionality.of(context),
            child: Padding(
              // padding to cancel the space to align the ribbons
              padding: EdgeInsets.only(top: AppSizes.p16),
              child: ViewMultiplierWidget(viewsMultiplier: viewsMultiplier!),
            ),
          ),
      ],
    );
  }
}
