import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:otex/core/theme/app_theme.dart';
import 'package:otex/features/ads/domain/usecases/get_ads_by_subcategory_id_usecase.dart';
import 'package:otex/features/ads/domain/usecases/get_all_ads_usecase.dart';
import 'package:otex/features/ads/presentation/cubit/ads_cubit.dart';
import 'package:otex/features/ads/presentation/screens/filter_screen.dart';
import 'package:otex/features/catalog/domain/usecases/get_all_subcategories_usecase.dart';
import 'package:otex/features/catalog/domain/usecases/get_categories_usecase.dart';
import 'package:otex/features/catalog/domain/usecases/get_subcategories_by_category_id_usecase.dart';
import 'package:otex/features/catalog/presentation/cubit/catalog_cubit.dart';
import 'package:otex/features/main/presentation/screens/main_screen.dart';
import 'package:otex/features/user/presentation/screens/subscriptions_screen.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AdsCubit(
                GetIt.instance<GetAllAdsUseCase>(),
                GetIt.instance<GetAdsBySubcategoryIdUseCase>(),
              )..getAllAds(),
            ),
            BlocProvider(
              create: (context) => CatalogCubit(
                GetIt.instance<GetAllCategoriesUseCase>(),
                GetIt.instance<GetAllSubcategoriesUseCase>(),
                GetIt.instance<GetSubcategoriesByCategoryIdUseCase>(),
              )..init(),
            ),
          ],
          child: Theme(data: AppTheme.lightTheme, child: MainScreen()),
        ),
        routes: [
          // Sub-route for the filter screen
          GoRoute(
            path: 'filter',
            builder: (context, state) => const FilterScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/subscriptions',
        builder: (context, state) => const SubscriptionsScreen(),
      ),
    ],
  );
}
