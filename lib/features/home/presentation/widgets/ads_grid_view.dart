import 'package:flutter/material.dart';
import 'package:otex/core/constants/sizes.dart';
import 'package:otex/features/home/presentation/widgets/ad_widget.dart';

class AdsGridView extends StatelessWidget {
  const AdsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppSizes.padding),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          childCount: 8,
          (context, index) => AdWidget(),
        ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: AppSizes.adWidgetAspectRatio,
          mainAxisExtent: AppSizes.adWidgetHeight,
          maxCrossAxisExtent: AppSizes.adWidgetWidth,
          mainAxisSpacing: AppSizes.padding12,
          crossAxisSpacing: AppSizes.padding12,
        ),
      ),
    );
  }
}
