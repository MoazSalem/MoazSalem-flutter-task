import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
      child: Text(
        title,
        style: AppTypography.headlineSmall.copyWith(
          color: Theme.of(context).colorScheme.primaryFixedDim,
        ),
      ),
    );
  }
}
