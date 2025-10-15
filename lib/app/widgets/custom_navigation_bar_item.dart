import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';

class CustomNavigationBarItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final bool blue;
  const CustomNavigationBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    this.blue = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = blue
        ? Theme.of(context).colorScheme.tertiary
        : isSelected
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.primaryFixedDim;
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: AppSizes.navBarItemMinWidth),
      child: Material(
        borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  icon,
                  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                ),
                Text(
                  label,
                  style: AppTypography.bodyMedium.copyWith(color: color),
                ),
                // TODO: Add indicator
              ],
            ),
          ),
        ),
      ),
    );
  }
}
