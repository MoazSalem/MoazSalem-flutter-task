import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class FreeShippingBanner extends StatelessWidget {
  const FreeShippingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.padding,
          vertical: AppSizes.padding8,
        ),
        child: Container(
          height: AppSizes.freeShippingBannerHeight,
          decoration: BoxDecoration(
            color: colorScheme.secondaryFixedDim,
            borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: AppSizes.padding8,
                  children: [
                    SvgPicture.asset(AppAssets.check),
                    Text(
                      locale.free_shipping,
                      style: AppTypography.labelMedium!.copyWith(
                        color: colorScheme.tertiaryFixed,
                      ),
                    ),
                  ],
                ),
                Text(
                  locale.for_any_offer,
                  style: AppTypography.labelSmall.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
