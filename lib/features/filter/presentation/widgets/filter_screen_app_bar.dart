import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class FilterScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final void Function()? restoreDefaultFunction;
  const FilterScreenAppBar({super.key, required this.restoreDefaultFunction});

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.toolbarHeight);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return AppBar(
      title: Text(locale.filter, style: AppTypography.headlineLarge),
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: EdgeInsets.only(bottom: AppSizes.p8),
        child: IconButton(
          icon: SvgPicture.asset(AppAssets.close, width: 12),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      actionsPadding: EdgeInsets.symmetric(horizontal: AppSizes.p8),
      actions: [
        TextButton(
          onPressed: restoreDefaultFunction,
          child: Text(
            locale.bt_default,
            style: AppTypography.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
      ],
    );
  }
}
