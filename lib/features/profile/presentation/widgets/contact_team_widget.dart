import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class ContactTeamWidget extends StatelessWidget {
  const ContactTeamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.p8,
        vertical: AppSizes.p8,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(AppSizes.normalRoundedCorner),
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(locale.plans_for_you, style: AppTypography.labelLarge),
          Text(locale.contact_us, style: AppTypography.labelMedium),
          SizedBox(height: AppSizes.p4),
          Material(
            color: colorScheme.surfaceContainer,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(AppSizes.normalRoundedCorner),
              child: Text(
                locale.sales_team,
                style: AppTypography.titleLarge.copyWith(
                  color: colorScheme.onTertiaryContainer,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
