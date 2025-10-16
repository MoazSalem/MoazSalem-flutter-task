import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';

class PlanPerk extends StatelessWidget {
  final String description;
  final String icon;
  const PlanPerk({super.key, required this.description, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
      child: Row(
        spacing: AppSizes.p8,
        children: [
          SvgPicture.asset(icon),
          Text(description, style: AppTypography.labelLarge),
        ],
      ),
    );
  }
}
