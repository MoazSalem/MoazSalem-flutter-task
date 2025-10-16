import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';

class PlanCardTitle extends StatelessWidget {
  final bool isSelected;
  final bool isHighestViews;
  final bool isBestValue;
  const PlanCardTitle({
    super.key,
    required this.isSelected,
    required this.isHighestViews,
    required this.isBestValue,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = isHighestViews || isBestValue
        ? colorScheme.tertiaryFixedDim
        : colorScheme.primary;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: colorScheme.surface,
              fillColor: WidgetStateProperty.all(color),
              value: isSelected,
              onChanged: (value) {},
              visualDensity: VisualDensity.compact,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'أساسية',
                style: AppTypography.titleLarge.copyWith(color: color),
              ),
            ),
          ],
        ),
        _UnderlinedText(amount: '3000.0'),
      ],
    );
  }
}

// note this currently only takes in consideration that the currency is ج.م
class _UnderlinedText extends StatelessWidget {
  final String amount;
  const _UnderlinedText({required this.amount});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: AppSizes.underlineWidth,
          height: AppSizes.underlineHeight,
          decoration: BoxDecoration(
            color: colorScheme.secondary,
            borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
          ),
        ),
        RichText(
          text: TextSpan(
            style: AppTypography.titleLarge.copyWith(
              color: colorScheme.secondary,
              fontFamily: 'Tajawal',
            ),
            children: [
              TextSpan(text: amount),
              TextSpan(
                text: 'ج',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: AppTypography.titleLarge.fontSize,
                  fontWeight: FontWeight.w700,
                  color: colorScheme.secondary,
                  backgroundColor: colorScheme.surface,
                ),
              ),
              TextSpan(text: '.'),
              TextSpan(
                text: 'م',
                style: TextStyle(
                  fontSize: AppTypography.titleLarge.fontSize,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Tajawal',
                  color: colorScheme.secondary,
                  backgroundColor: colorScheme.surface,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
