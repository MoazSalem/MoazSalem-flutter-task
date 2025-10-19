import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/utils/app_assets.dart';
import 'package:otex/core/utils/translations_helper.dart';
import 'package:otex/features/user/domain/entities/subscription_plan.dart';
import 'package:otex/features/user/presentation/widgets/plan_card_title.dart';
import 'package:otex/features/user/presentation/widgets/plan_perk.dart';
import 'package:otex/features/user/presentation/widgets/ribbon_widget.dart';
import 'package:otex/features/user/presentation/widgets/view_multiplier_widget.dart';
import 'package:otex/l10n/app_localizations.dart';

class PlanCardWidget extends StatelessWidget {
  final SubscriptionPlan subscriptionPlan;
  final bool isSelected;
  const PlanCardWidget({
    super.key,
    required this.subscriptionPlan,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final locale = AppLocalizations.of(context)!;
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
                      planName: TranslationsHelper.getTranslation(
                        context,
                        subscriptionPlan.description,
                      ),
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
                    subscriptionPlan.perks.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: PlanPerk(
                        icon: AppAssets.getPerkIcon(index: index),
                        description: TranslationsHelper.getTranslation(
                          context,
                          "perk_$index",
                        ),
                        isIn48Hour: [
                          2,
                          6,
                        ].contains(subscriptionPlan.perks[index]),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizes.p4),
                ],
              ),
            ),
          ],
        ),
        if (subscriptionPlan.bestValue || subscriptionPlan.highestViews)
          Positioned.directional(
            top: 0,
            start: 0,
            textDirection: Directionality.of(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.p4),
              child: RibbonWidget(
                text: subscriptionPlan.bestValue
                    ? locale.best_value
                    : locale.highest_views,
                ribbonColor: colorScheme.secondaryContainer,
                height: AppSizes.ribbonHeight,
                width: subscriptionPlan.bestValue
                    ? AppSizes.ribbonWidth
                    : AppSizes.ribbonMinWidth,
                // Locale name to rotate the ribbon based on the locale
                localeName: locale.localeName,
              ),
            ),
          ),
        if (subscriptionPlan.viewsMultiplier != null)
          Positioned.directional(
            end: AppSizes.p24,
            textDirection: Directionality.of(context),
            child: Padding(
              // padding to cancel the space to align the ribbons
              padding: EdgeInsets.only(top: AppSizes.p16),
              child: ViewMultiplierWidget(
                viewsMultiplier: subscriptionPlan.viewsMultiplier!,
              ),
            ),
          ),
      ],
    );
  }
}
