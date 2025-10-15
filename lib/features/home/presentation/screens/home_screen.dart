import 'package:flutter/material.dart';
import 'package:otex/features/home/presentation/widgets/categories_list_bar.dart';
import 'package:otex/features/home/presentation/widgets/home_screen_app_bar.dart';
import 'package:otex/features/home/presentation/widgets/subcategories_list_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            HomeScreenAppBar(),
            CategoriesListBar(),
            SubcategoriesListBar(),
            SliverFillRemaining(),
          ],
        ),
      ),
    );
  }
}
