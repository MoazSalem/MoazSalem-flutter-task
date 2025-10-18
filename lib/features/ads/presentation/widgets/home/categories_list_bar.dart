import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/ads/presentation/widgets/home/category_widget.dart';
import 'package:otex/features/ads/presentation/widgets/home/horizontal_scroll_bar.dart';
import 'package:otex/features/catalog/presentation/cubit/catalog_cubit.dart';
import 'package:otex/l10n/app_localizations.dart';

class CategoriesListBar extends StatefulWidget {
  const CategoriesListBar({super.key});

  @override
  State<CategoriesListBar> createState() => _CategoriesListBarState();
}

class _CategoriesListBarState extends State<CategoriesListBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.directional(start: AppSizes.p16),
      sliver: HorizontalScrollBar(
        // could be pinned while scrolling
        pinned: false,
        height: AppSizes.categoryBarHeight,
        child: BlocBuilder<CatalogCubit, CatalogState>(
          builder: (context, state) {
            if (state.error != null) {
              return Center(child: Text(state.error!));
            }
            if (state.isCategoriesLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            // Loaded state
            if (state.categories.isNotEmpty) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.categories.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsetsGeometry.directional(end: AppSizes.p8),
                  child: CategoryWidget(
                    name: state.categories[index].name,
                    isSelected: index == _selectedIndex,
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                      BlocProvider.of<CatalogCubit>(
                        context,
                      ).onCategorySelected(state.categories[index]);
                    },
                  ),
                ),
              );
            } else {
              return Center(
                child: Text(AppLocalizations.of(context)!.no_results_found),
              );
            }
          },
        ),
      ),
    );
  }
}
