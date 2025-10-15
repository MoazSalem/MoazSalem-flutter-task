import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return SliverAppBar(
      toolbarHeight: AppSizes.toolbarHeight,
      title: Padding(
        padding: EdgeInsets.only(top: AppSizes.p40),
        child: Text(locale.explore_deals, style: AppTypography.headlineSmall),
      ),
      actions: [
        InkWell(
          borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
          onTap: () {},
          child: Row(
            children: [
              Text(
                locale.all,
                style: AppTypography.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primaryFixedDim,
                ),
              ),
              // rotate arrow based on locale
              Transform.rotate(
                angle: locale.localeName == 'en' ? 3.14 : 0,
                child: SvgPicture.asset(AppAssets.arrowForward),
              ),
            ],
          ),
        ),
      ],
      actionsPadding: EdgeInsetsGeometry.directional(
        top: AppSizes.p40,
        end: AppSizes.p16,
      ),
    );
  }
}
