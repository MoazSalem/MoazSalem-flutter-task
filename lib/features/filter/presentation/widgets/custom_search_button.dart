import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class CustomSearchButton extends StatelessWidget {
  final void Function()? onPressed;
  const CustomSearchButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.p16,
        vertical: AppSizes.p40,
      ),
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          minimumSize: Size(double.infinity, AppSizes.customSearchButtonHeight),
        ),
        onPressed: onPressed,
        child: Text(
          AppLocalizations.of(context)!.watch_results("10,000"),
          style: AppTypography.titleLarge.copyWith(
            color: Theme.of(context).colorScheme.onTertiary,
          ),
        ),
      ),
    );
  }
}
