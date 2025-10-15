import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/home/presentation/widgets/category_widget.dart';
import 'package:otex/features/home/presentation/widgets/horizontal_scroll_bar.dart';

const _tempCategories = [
  "كل العروض",
  "ملابس",
  "أكسسوارات",
  "الكترونيات",
  "أخرى",
];

class CategoriesListBar extends StatelessWidget {
  const CategoriesListBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.directional(start: AppSizes.p16),
      sliver: HorizontalScrollBar(
        pinned: true,
        height: AppSizes.categoryBarHeight,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _tempCategories.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsetsGeometry.directional(end: AppSizes.p8),
            child: CategoryWidget(
              title: _tempCategories[index],
              isSelected: index == 0,
            ),
          ),
        ),
      ),
    );
  }
}
