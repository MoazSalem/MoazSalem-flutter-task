import 'package:flutter/material.dart';
import 'package:otex/features/ads/presentation/widgets/filter/filter_chips_wrap.dart';
import 'package:otex/features/ads/presentation/widgets/filter/section_widget.dart';
import 'package:otex/l10n/app_localizations.dart';

class EstateStateSection extends StatelessWidget {
  const EstateStateSection({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return SectionWidget(
      title: locale.estate_state,
      children: [
        FilterChipsWrap(
          initialIndex: 1,
          filterOptions: [locale.any, locale.ready, locale.under_const],
        ),
      ],
    );
  }
}
