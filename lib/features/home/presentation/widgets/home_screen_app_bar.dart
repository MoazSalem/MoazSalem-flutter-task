import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/constants/assets.dart';
import 'package:otex/core/constants/sizes.dart';
import 'package:otex/l10n/app_localizations.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return SliverAppBar(
      toolbarHeight: AppSizes.toolbarHeight,
      title: Padding(
        padding: const EdgeInsets.only(top: AppSizes.padding20),
        child: Text(
          locale.explore_deals,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      actions: [
        InkWell(
          borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
          onTap: () {},
          child: Row(
            children: [
              Text(
                locale.all,
                style: TextStyle(
                  fontSize: AppSizes.font16,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.primaryFixedDim,
                ),
              ),
              // rotate arrow based on locale
              Transform.rotate(
                angle: AppLocalizations.of(context)!.localeName == 'en'
                    ? 3.14
                    : 0,
                child: SvgPicture.asset(AppAssets.arrowForward),
              ),
            ],
          ),
        ),
      ],
      actionsPadding: const EdgeInsetsGeometry.directional(
        top: AppSizes.padding20,
        end: AppSizes.padding,
      ),
    );
  }
}
