import 'package:flutter/material.dart';
import 'package:otex/features/ads/presentation/widgets/home/ads_grid_view.dart';
import 'package:otex/features/ads/presentation/widgets/home/categories_list_bar.dart';
import 'package:otex/features/ads/presentation/widgets/home/free_shipping_banner.dart';
import 'package:otex/features/ads/presentation/widgets/home/home_screen_app_bar.dart';
import 'package:otex/features/ads/presentation/widgets/home/subcategories_list_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: CustomScrollView(
        slivers: [
          HomeScreenAppBar(),
          CategoriesListBar(),
          SubcategoriesListBar(),
          FreeShippingBanner(),
          AdsGridView(),
        ],
      ),
    );
  }
}
