import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class PlanPerk extends StatelessWidget {
  final String description;
  final String icon;
  final bool isIn48Hour;
  const PlanPerk({
    super.key,
    required this.description,
    required this.icon,
    this.isIn48Hour = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
      child: Row(
        spacing: AppSizes.p8,
        children: [
          SvgPicture.asset(icon),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(description, style: AppTypography.labelLarge),
              if (isIn48Hour)
                Text(
                  "(${AppLocalizations.of(context)!.in_48_hours})",
                  style: AppTypography.labelLarge.copyWith(
                    color: Theme.of(context).colorScheme.secondaryFixed,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
