import 'package:flutter/material.dart';
import 'package:otex/features/ads/presentation/widgets/filter/filter_chips_wrap.dart';
import 'package:otex/features/ads/presentation/widgets/filter/section_widget.dart';
import 'package:otex/l10n/app_localizations.dart';

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return SectionWidget(
      title: locale.payment_method,
      children: [
        FilterChipsWrap(
          initialIndex: 2,
          filterOptions: [locale.any, locale.installments, locale.cash],
        ),
      ],
    );
  }
}
