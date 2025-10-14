import 'package:flutter/material.dart';
import 'package:otex/core/constants/sizes.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  const CategoryWidget({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
      onTap: () {},
      child: Material(
        color: isSelected ? colorScheme.secondaryFixedDim : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
          side: BorderSide(
            color: colorScheme.outline,
            width: AppSizes.borderWidth,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.padding12),
            child: Text(
              title,
              style: TextStyle(
                color: isSelected
                    ? colorScheme.secondary
                    : colorScheme.primaryFixed,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
