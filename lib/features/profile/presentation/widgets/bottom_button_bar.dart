import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/app/widgets/custom_button.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class BottomButtonBar extends StatelessWidget {
  const BottomButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final locale = AppLocalizations.of(context)!;
    return SafeArea(
      top: false,
      child: Container(
        color: colorScheme.surface,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              thickness: AppSizes.dividerLargeThickness,
              color: colorScheme.outline,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.p16,
                vertical: AppSizes.p4,
              ),
              child: CustomButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  spacing: AppSizes.p8,
                  children: [
                    Text(
                      locale.next,
                      style: AppTypography.titleLarge.copyWith(
                        color: colorScheme.surface,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: AppSizes.p4),
                      child: Transform.rotate(
                        angle: locale.localeName == 'en' ? AppSizes.pi : 0,
                        child: SvgPicture.asset(
                          AppAssets.arrowForward,
                          colorFilter: ColorFilter.mode(
                            colorScheme.surface,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
