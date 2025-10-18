import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/ads/presentation/cubit/ads_cubit.dart';
import 'package:otex/features/ads/presentation/widgets/home/horizontal_scroll_bar.dart';
import 'package:otex/features/ads/presentation/widgets/home/subcategory_widget.dart';
import 'package:otex/features/catalog/presentation/cubit/catalog_cubit.dart';
import 'package:otex/l10n/app_localizations.dart';

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
        // could be pinned while scrolling
        pinned: false,
        height: AppSizes.subcategoryBarHeight,
        child: BlocBuilder<CatalogCubit, CatalogState>(
          builder: (context, state) {
            if (state.error != null) {
              return Center(child: Text(state.error!));
            }
            if (state.isSubcategoriesLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            // Loaded state
            if (state.subcategories.isNotEmpty) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.subcategories.length,
                itemBuilder: (context, index) => SubcategoryWidget(
                  subcategory: state.subcategories[index],
                  isSelected: index == state.selectedSubcategoryIndex,
                  onTap: () {
                    BlocProvider.of<AdsCubit>(
                      context,
                    ).getAdsBySubcategoryId(state.subcategories[index].id);
                    BlocProvider.of<CatalogCubit>(
                      context,
                    ).onSubcategorySelected(index);
                  },
                ),
              );
            } else {
              return Center(
                child: Text(AppLocalizations.of(context)!.no_subcategories),
              );
            }
          },
        ),
      ),
    );
  }
}
