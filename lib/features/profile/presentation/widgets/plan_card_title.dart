import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';

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
    final colorScheme = Theme.of(context).colorScheme;
    final color = isSelected
        ? colorScheme.tertiaryFixedDim
        : colorScheme.primary;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: colorScheme.surface,
              fillColor: WidgetStateProperty.resolveWith((
                Set<WidgetState> states,
              ) {
                if (states.contains(WidgetState.selected)) {
                  return color;
                }
                return null;
              }),
              value: isSelected,
              onChanged: (value) {},
              visualDensity: VisualDensity.compact,
            ),
            Padding(
              padding: EdgeInsets.only(top: AppSizes.p4),
              child: Text(
                planName,
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
