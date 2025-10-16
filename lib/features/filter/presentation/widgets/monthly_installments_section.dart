import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/filter/presentation/widgets/custom_text_form_field.dart';
import 'package:otex/features/filter/presentation/widgets/section_title.dart';
import 'package:otex/l10n/app_localizations.dart';

class MonthlyInstallmentsSection extends StatelessWidget {
  const MonthlyInstallmentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionTitle(title: AppLocalizations.of(context)!.month_install),
        Padding(
          padding: EdgeInsets.all(AppSizes.p8),
          child: Row(
            spacing: AppSizes.p8,
            children: [
              Expanded(child: CustomTextFormField()),
              Expanded(child: CustomTextFormField()),
            ],
          ),
        ),
        SizedBox(width: AppSizes.p8),
      ],
    );
  }
}
