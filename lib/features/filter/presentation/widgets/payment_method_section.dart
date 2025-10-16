import 'package:flutter/material.dart';
import 'package:otex/features/filter/presentation/widgets/filter_chips_wrap.dart';
import 'package:otex/features/filter/presentation/widgets/section_widget.dart';
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
          filterOptions: [locale.any, locale.installments, locale.cash],
        ),
      ],
    );
  }
}
