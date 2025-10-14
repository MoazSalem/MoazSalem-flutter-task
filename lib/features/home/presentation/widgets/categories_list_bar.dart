import 'package:flutter/material.dart';
import 'package:otex/core/constants/sizes.dart';
import 'package:otex/features/home/presentation/widgets/category_widget.dart';

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
    return SliverAppBar(
      pinned: true,
      primary: false,
      toolbarHeight: AppSizes.categoryWidgetHeight,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: SizedBox(
        height: AppSizes.categoryWidgetHeight,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _tempCategories.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsetsGeometry.directional(
              end: AppSizes.padding8,
            ),
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
