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
import 'package:otex/features/ads/domain/usecases/get_ads_by_subcategory_Id_usecase.dart'
    as _i448;
import 'package:otex/features/ads/domain/usecases/get_all_ads_usecase.dart'
    as _i444;
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
    gh.lazySingleton<_i287.AdRepository>(
      () => _i735.AdRepositoryImpl(gh<_i597.AdLocalDataSource>()),
    );
    gh.factory<_i448.GetAdsBySubcategoryIdUseCase>(
      () => _i448.GetAdsBySubcategoryIdUseCase(gh<_i287.AdRepository>()),
    );
    gh.factory<_i444.GetAllAdsUseCase>(
      () => _i444.GetAllAdsUseCase(gh<_i287.AdRepository>()),
    );
    return this;
  }
}

class _$DatabaseModule extends _i293.DatabaseModule {}
