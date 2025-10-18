import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/ads/presentation/widgets/filter/custom_text_form_field.dart';
import 'package:otex/features/ads/presentation/widgets/filter/section_widget.dart';
import 'package:otex/l10n/app_localizations.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return SectionWidget(
      title: AppLocalizations.of(context)!.price,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppSizes.p8,
            horizontal: AppSizes.p16,
          ),
          child: Row(
            spacing: AppSizes.p8,
            children: [
              Expanded(child: CustomTextFormField(label: locale.lowest_price)),
              Expanded(child: CustomTextFormField(label: locale.highest_price)),
            ],
          ),
        ),
      ],
    );
  }
}
