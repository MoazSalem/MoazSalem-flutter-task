import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/home/presentation/widgets/ad_widget.dart';

class AdsGridView extends StatelessWidget {
  const AdsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(AppSizes.p16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          childCount: 8,
          (context, index) => AdWidget(),
        ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: AppSizes.adWidgetAspectRatio,
          mainAxisExtent: AppSizes.adWidgetHeight,
          maxCrossAxisExtent: AppSizes.adWidgetWidth,
          mainAxisSpacing: AppSizes.p12,
          crossAxisSpacing: AppSizes.p12,
        ),
      ),
    );
  }
}
