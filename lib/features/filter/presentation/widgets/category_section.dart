import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/features/filter/presentation/widgets/section_widget.dart';
import 'package:otex/l10n/app_localizations.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    return SectionWidget(
      title: locale.category,
      children: [
        ListTile(
          onTap: () {},
          contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.p20),
          leading: SvgPicture.asset(AppAssets.realEstate),
          title: Text(locale.real_estate, style: AppTypography.labelLarge),
          subtitle: Text(
            locale.villa_s,
            style: AppTypography.labelMedium.copyWith(
              color: colorScheme.primaryFixedDim,
            ),
          ),
          trailing: Text(
            locale.change,
            style: AppTypography.labelLarge.copyWith(
              color: colorScheme.tertiaryFixedDim,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Divider(thickness: AppSizes.dividerThickness),
        ListTile(
          onTap: () {},
          contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.p20),
          leading: SizedBox(
            width: AppSizes.iconNormal,
            child: SvgPicture.asset(AppAssets.location),
          ),
          title: Text(locale.location, style: AppTypography.labelLarge),
          subtitle: Text(
            locale.egypt,
            style: AppTypography.labelMedium.copyWith(
              color: colorScheme.primaryFixedDim,
            ),
          ),
          trailing: SizedBox(
            width: AppSizes.iconNormal,
            child: // rotate arrow based on locale
            Transform.rotate(
              angle: locale.localeName == 'en' ? 3.14 : 0,
              child: SvgPicture.asset(AppAssets.arrowForward2),
            ),
          ),
        ),
        Divider(thickness: AppSizes.dividerThickness),
      ],
    );
  }
}
