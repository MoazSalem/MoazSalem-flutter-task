import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:otex/features/ads/presentation/widgets/home/ads_grid_view.dart';
import 'package:otex/features/ads/presentation/widgets/home/categories_list_bar.dart';
import 'package:otex/features/ads/presentation/widgets/home/free_shipping_banner.dart';
import 'package:otex/features/ads/presentation/widgets/home/home_screen_app_bar.dart';
import 'package:otex/features/ads/presentation/widgets/home/subcategories_list_bar.dart';
import 'package:otex/features/catalog/domain/usecases/get_all_subcategories_usecase.dart';
import 'package:otex/features/catalog/domain/usecases/get_categories_usecase.dart';
import 'package:otex/features/catalog/domain/usecases/get_subcategories_by_category_id_usecase.dart';
import 'package:otex/features/catalog/presentation/cubit/catalog_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: BlocProvider(
        create: (context) => CatalogCubit(
          GetIt.instance<GetAllCategoriesUseCase>(),
          GetIt.instance<GetAllSubcategoriesUseCase>(),
          GetIt.instance<GetSubcategoriesByCategoryIdUseCase>(),
        )..init(),
        child: CustomScrollView(
          slivers: [
            HomeScreenAppBar(),
            CategoriesListBar(),
            SubcategoriesListBar(),
            FreeShippingBanner(),
            AdsGridView(),
          ],
        ),
      ),
    );
  }
}
