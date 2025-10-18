import 'package:flutter/material.dart';
import 'package:otex/features/ads/presentation/widgets/filter/filter_chips_wrap.dart';
import 'package:otex/features/ads/presentation/widgets/filter/section_widget.dart';
import 'package:otex/l10n/app_localizations.dart';

class TypeSection extends StatelessWidget {
  const TypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return SectionWidget(
      title: locale.type,
      children: [
        FilterChipsWrap(
          filterOptions: [
            locale.all,
            locale.twin_house,
            locale.separate_villa,
            locale.town_house,
          ],
        ),
      ],
    );
  }
}
