import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/filter/presentation/widgets/filter_chips_wrap.dart';
import 'package:otex/features/filter/presentation/widgets/section_title.dart';
import 'package:otex/l10n/app_localizations.dart';

class TypeSection extends StatelessWidget {
  const TypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionTitle(title: locale.type),
        FilterChipsWrap(
          filterOptions: [
            locale.all,
            locale.twin_house,
            locale.separate_villa,
            locale.town_house,
          ],
        ),
        SizedBox(height: AppSizes.p8),
      ],
    );
  }
}
