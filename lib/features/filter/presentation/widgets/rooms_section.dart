import 'package:flutter/material.dart';
import 'package:otex/features/filter/presentation/widgets/filter_chips_wrap.dart';
import 'package:otex/features/filter/presentation/widgets/section_widget.dart';
import 'package:otex/l10n/app_localizations.dart';

class RoomsSection extends StatelessWidget {
  const RoomsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return SectionWidget(
      title: locale.num_rooms,
      children: [
        FilterChipsWrap(
          filterOptions: [
            locale.rooms(4),
            locale.more_than_5,
            locale.all,
            locale.two_rooms,
            locale.rooms(3),
          ],
        ),
      ],
    );
  }
}
