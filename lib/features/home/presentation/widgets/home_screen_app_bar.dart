import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/features/filter/presentation/screens/filter_screen.dart';
import 'package:otex/l10n/app_localizations.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return SliverAppBar(
      toolbarHeight: AppSizes.toolbarHeight,
      titleSpacing: AppSizes.p16,
      title: Padding(
        padding: EdgeInsets.only(top: AppSizes.p40),
        child: Text(
          locale.explore_deals,
          style: AppTypography.headlineSmall!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      actions: [
        InkWell(
          borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FilterScreen()),
          ),
          child: Row(
            children: [
              Text(
                locale.all,
                style: AppTypography.headlineMedium!.copyWith(
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
