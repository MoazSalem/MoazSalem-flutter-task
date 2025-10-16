import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';

class FilterChipsWrap extends StatefulWidget {
  final int initialIndex;
  final List<String> filterOptions;
  final Function(String selected)? onSelected;

  const FilterChipsWrap({
    super.key,
    required this.filterOptions,
    this.onSelected,
    this.initialIndex = 0,
  });

  @override
  State<FilterChipsWrap> createState() => _FilterChipsWrapState();
}

class _FilterChipsWrapState extends State<FilterChipsWrap> {
  late int selectedIndex = widget.initialIndex;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.p16,
        vertical: AppSizes.p8,
      ),
      child: Wrap(
        spacing: AppSizes.p12,
        runSpacing: AppSizes.p12,
        children: List.generate(widget.filterOptions.length, (index) {
          final bool isSelected = index == selectedIndex;
          final String label = widget.filterOptions[index];
          return ChoiceChip(
            labelPadding: EdgeInsets.symmetric(
              vertical: AppSizes.chipBorderWidth,
            ),
            label: ConstrainedBox(
              constraints: BoxConstraints(minWidth: AppSizes.chipMinWidth),
              child: Text(
                textAlign: TextAlign.center,
                widget.filterOptions[index],
                style: AppTypography.labelLarge.copyWith(
                  color: isSelected
                      ? colorScheme.onTertiaryContainer
                      : colorScheme.primaryFixedDim,
                ),
              ),
            ),
            selected: isSelected,
            selectedColor: colorScheme.tertiaryContainer,
            backgroundColor: Colors.white,
            shape: StadiumBorder(
              side: BorderSide(
                width: AppSizes.chipBorderWidth,
                color: isSelected
                    ? colorScheme.onTertiaryContainer
                    : colorScheme.outline,
              ),
            ),
            onSelected: (value) {
              setState(() => selectedIndex = index);
              widget.onSelected?.call(label);
            },
            showCheckmark: false,
          );
        }),
      ),
    );
  }
}
