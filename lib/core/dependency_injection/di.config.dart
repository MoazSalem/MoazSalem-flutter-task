// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:otex/core/db/database_module.dart' as _i293;
import 'package:otex/features/ads/data/datasources/ad_local_data_source_impl.dart'
    as _i866;
import 'package:otex/features/ads/data/repositories/ad_repository_impl.dart'
    as _i735;
import 'package:otex/features/ads/domain/datasource/ad_local_data_source.dart'
    as _i597;
import 'package:otex/features/ads/domain/repositories/ad_repository.dart'
    as _i287;
import 'package:otex/features/ads/domain/usecases/get_ads_by_subcategory_id_usecase.dart'
    as _i908;
import 'package:otex/features/ads/domain/usecases/get_all_ads_usecase.dart'
    as _i444;
import 'package:otex/features/ads/presentation/cubit/ads_cubit.dart' as _i357;
import 'package:otex/features/catalog/data/datasources/catalog_local_datasource_impl.dart'
    as _i398;
import 'package:otex/features/catalog/data/repositories/catalog_repository_impl.dart'
    as _i88;
import 'package:otex/features/catalog/domain/datasources/catalog_local_datasource.dart'
    as _i364;
import 'package:otex/features/catalog/domain/repositories/catalog_repository.dart'
    as _i67;
import 'package:otex/features/catalog/domain/usecases/get_all_subcategories_usecase.dart'
    as _i950;
import 'package:otex/features/catalog/domain/usecases/get_categories_usecase.dart'
    as _i622;
import 'package:otex/features/catalog/domain/usecases/get_subcategories_by_category_id_usecase.dart'
    as _i198;
import 'package:otex/features/catalog/presentation/cubit/catalog_cubit.dart'
    as _i608;
import 'package:otex/features/user/data/datasources/user_local_datasource_impl.dart'
    as _i1045;
import 'package:otex/features/user/data/repositories/user_repository_impl.dart'
    as _i708;
import 'package:otex/features/user/domain/datasources/user_local_datasource.dart'
    as _i253;
import 'package:otex/features/user/domain/repositories/user_repository.dart'
    as _i97;
import 'package:otex/features/user/domain/usecases/get_all_plans_usecase.dart'
    as _i726;
import 'package:otex/features/user/presentation/cubit/user_cubit.dart' as _i216;
import 'package:sqflite/sqflite.dart' as _i779;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final databaseModule = _$DatabaseModule();
    await gh.singletonAsync<_i779.Database>(
      () => databaseModule.database,
      preResolve: true,
      dispose: _i293.disposeDatabase,
    );
    gh.lazySingleton<_i597.AdLocalDataSource>(
      () => _i866.AdLocalDataSourceImpl(db: gh<_i779.Database>()),
    );
    gh.singleton<_i253.UserLocalDatasource>(
      () => _i1045.UserLocalDatasourceImpl(gh<_i779.Database>()),
    );
    gh.singleton<_i364.CatalogLocalDataSource>(
      () => _i398.CatalogLocalDataSourceImpl(gh<_i779.Database>()),
    );
    gh.lazySingleton<_i287.AdRepository>(
      () => _i735.AdRepositoryImpl(gh<_i597.AdLocalDataSource>()),
    );
    gh.singleton<_i97.UserRepository>(
      () => _i708.UserRepositoryImpl(gh<_i253.UserLocalDatasource>()),
    );
    gh.singleton<_i67.CatalogRepository>(
      () => _i88.CatalogRepositoryImpl(gh<_i364.CatalogLocalDataSource>()),
    );
    gh.factory<_i908.GetAdsBySubcategoryIdUseCase>(
      () => _i908.GetAdsBySubcategoryIdUseCase(gh<_i287.AdRepository>()),
    );
    gh.factory<_i444.GetAllAdsUseCase>(
      () => _i444.GetAllAdsUseCase(gh<_i287.AdRepository>()),
    );
    gh.factory<_i726.GetAllPlansUseCase>(
      () => _i726.GetAllPlansUseCase(gh<_i97.UserRepository>()),
    );
    gh.factory<_i950.GetAllSubcategoriesUseCase>(
      () => _i950.GetAllSubcategoriesUseCase(gh<_i67.CatalogRepository>()),
    );
    gh.factory<_i622.GetAllCategoriesUseCase>(
      () => _i622.GetAllCategoriesUseCase(gh<_i67.CatalogRepository>()),
    );
    gh.factory<_i198.GetSubcategoriesByCategoryIdUseCase>(
      () => _i198.GetSubcategoriesByCategoryIdUseCase(
        gh<_i67.CatalogRepository>(),
      ),
    );
    gh.factory<_i357.AdsCubit>(
      () => _i357.AdsCubit(
        gh<_i444.GetAllAdsUseCase>(),
        gh<_i908.GetAdsBySubcategoryIdUseCase>(),
      ),
    );
    gh.factory<_i216.UserCubit>(
      () => _i216.UserCubit(gh<_i726.GetAllPlansUseCase>()),
    );
    gh.factory<_i608.CatalogCubit>(
      () => _i608.CatalogCubit(
        gh<_i622.GetAllCategoriesUseCase>(),
        gh<_i950.GetAllSubcategoriesUseCase>(),
        gh<_i198.GetSubcategoriesByCategoryIdUseCase>(),
      ),
    );
    return this;
  }
}

class _$DatabaseModule extends _i293.DatabaseModule {}
