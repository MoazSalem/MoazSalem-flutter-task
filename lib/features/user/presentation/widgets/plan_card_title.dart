import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class PlanCardTitle extends StatelessWidget {
  final String planName;
  final bool isSelected;
  const PlanCardTitle({
    super.key,
    required this.isSelected,
    required this.planName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              _TitleWithCheckboxWidget(
                planName: planName,
                isSelectedDefault: isSelected,
              ),
            ],
          ),
        ),
        _UnderlinedText(
          amount: '3000',
          currency: AppLocalizations.of(context)!.egp,
        ),
      ],
    );
  }
}

class _TitleWithCheckboxWidget extends StatefulWidget {
  final String planName;
  final bool isSelectedDefault;
  const _TitleWithCheckboxWidget({
    this.isSelectedDefault = false,
    required this.planName,
  });

  @override
  State<_TitleWithCheckboxWidget> createState() =>
      _TitleWithCheckboxWidgetState();
}

class _TitleWithCheckboxWidgetState extends State<_TitleWithCheckboxWidget> {
  late bool isSelected = widget.isSelectedDefault;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = isSelected
        ? colorScheme.tertiaryFixedDim
        : colorScheme.primary;
    return Row(
      children: [
        Checkbox(
          checkColor: colorScheme.surface,
          fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return color;
            }
            return null;
          }),
          value: isSelected,
          onChanged: (value) {
            setState(() {
              isSelected = value!;
            });
          },
          visualDensity: VisualDensity.compact,
        ),
        Padding(
          padding: EdgeInsets.only(top: AppSizes.p4),
          child: Text(
            widget.planName,
            style: AppTypography.titleLarge.copyWith(color: color),
          ),
        ),
      ],
    );
  }
}

class _UnderlinedText extends StatelessWidget {
  final String amount;
  final String currency;
  const _UnderlinedText({required this.amount, required this.currency});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final currencyList = currency.split('');

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // underline
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppSizes.p2,
            horizontal: AppSizes.p4,
          ),
          child: Container(
            width:
                // calculate the width of the text and remove 2 pixels from the width to make it look like design
                amount.length * AppSizes.p8 +
                currencyList.length * AppSizes.p8 -
                2,
            height: AppSizes.underlineHeight,
            decoration: BoxDecoration(
              color: colorScheme.secondary,
              borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
            ),
          ),
        ),

        // amount and currency
        RichText(
          maxLines: 1,
          overflow: TextOverflow.fade,
          text: TextSpan(
            style: AppTypography.titleLarge.copyWith(
              color: colorScheme.secondary,
              fontFamily: 'Tajawal',
            ),
            children: [
              TextSpan(text: amount),
              // generate currency with different styles to look like design
              ...List.generate(
                currencyList.length,
                (index) => TextSpan(
                  text: currencyList[index],
                  style: currencyList[index] == "."
                      ? AppTypography.titleLarge.copyWith(
                          color: colorScheme.secondary,
                          fontFamily: 'Tajawal',
                        )
                      : TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: AppTypography.titleLarge.fontSize,
                          fontWeight: FontWeight.w700,
                          color: colorScheme.secondary,
                          backgroundColor: colorScheme.surface,
                          height:
                              AppLocalizations.of(context)!.localeName == 'en'
                              ? 0.4
                              : 0.9,
                        ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
