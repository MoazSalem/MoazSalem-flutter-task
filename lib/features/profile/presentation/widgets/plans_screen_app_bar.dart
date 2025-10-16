import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class PlansScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PlansScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.toolbarHeight);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return AppBar(
      toolbarHeight: AppSizes.toolbarHeight,
      titleSpacing: 0,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSizes.p4,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _BackButton(),
              // padding to align with the back button
              Padding(
                padding: EdgeInsets.only(bottom: AppSizes.p4),
                child: Text(
                  locale.choose_plans,
                  style: AppTypography.headlineLarge,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
            child: Text(
              locale.choose_from_bellow,
              style: AppTypography.bodyLarge.copyWith(
                color: Theme.of(context).colorScheme.primaryFixedDim,
              ),
            ),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Transform.rotate(
        angle: AppLocalizations.of(context)!.localeName == 'en'
            ? 0
            : AppSizes.pi,
        child: SvgPicture.asset(
          AppAssets.arrowForward2,
          width: AppSizes.arrowForward2Width,
        ),
      ),
    );
  }
}
