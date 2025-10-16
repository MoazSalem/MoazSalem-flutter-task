import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/filter/presentation/widgets/section_title.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const SectionWidget({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionTitle(title: title),
        ...children,
        SizedBox(height: AppSizes.p8),
      ],
    );
  }
}
