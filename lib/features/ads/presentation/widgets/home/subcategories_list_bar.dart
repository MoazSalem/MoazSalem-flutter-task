import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/utils/app_assets.dart';
import 'package:otex/features/ads/presentation/widgets/home/horizontal_scroll_bar.dart';
import 'package:otex/features/ads/presentation/widgets/home/subcategory_widget.dart';

const _tempSubcategories = [
  "موضة رجالى",
  "ساعات",
  "موبايلات",
  "منتجات تجميل",
  "عقارات",
];

class SubcategoriesListBar extends StatelessWidget {
  const SubcategoriesListBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.directional(
        top: AppSizes.subcategoryBarTopPadding,
        bottom: AppSizes.subcategoryBarBottomPadding,
        start: AppSizes.p16,
      ),
      sliver: HorizontalScrollBar(
        height: AppSizes.subcategoryBarHeight,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _tempSubcategories.length,
          itemBuilder: (context, index) => SubcategoryWidget(
            title: _tempSubcategories[index],
            image: AppAssets.getImageByUrl(url: 'png/men_fashion.png'),
          ),
        ),
      ),
    );
  }
}
