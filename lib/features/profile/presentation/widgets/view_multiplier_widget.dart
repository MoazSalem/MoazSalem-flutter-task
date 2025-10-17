import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class ViewMultiplierWidget extends StatelessWidget {
  final int viewsMultiplier;
  const ViewMultiplierWidget({super.key, required this.viewsMultiplier});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: AppSizes.viewMultiplierWidgetHeight,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            height: AppSizes.viewMultiplierContainerHeight,
            width: AppSizes.viewMultiplierContainerWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppSizes.viewMultiplierContainerCorners,
              ),
              shape: BoxShape.rectangle,
              color: colorScheme.outlineVariant,
              border: Border.all(
                color: colorScheme.tertiaryFixed,
                width: AppSizes.borderWidth,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: AppSizes.p12),
              child: Text(
                viewsMultiplier.toString(),
                textAlign: TextAlign.center,
                style: AppTypography.titleMedium.copyWith(
                  fontWeight: FontWeight.w700,
                  color: colorScheme.tertiaryFixed,
                ),
              ),
            ),
          ),
          Container(
            height: AppSizes.viewMultiplierTextContainerHeight,
            width: AppSizes.viewMultiplierContainerWidth,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: colorScheme.surface,
            ),
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.time_the_views,
                textAlign: TextAlign.center,
                style: AppTypography.labelMedium.copyWith(
                  shadows: [
                    Shadow(
                      color: colorScheme.primary,
                      //  space between text and the underline
                      offset: Offset(0, -3),
                    ),
                  ],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: AppSizes.dividerLargeThickness,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
