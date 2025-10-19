import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:otex/features/catalog/domain/entities/category.dart';
import 'package:otex/features/catalog/domain/entities/subcategory.dart';
import 'package:otex/features/catalog/domain/usecases/get_all_subcategories_usecase.dart';
import 'package:otex/features/catalog/domain/usecases/get_categories_usecase.dart';
import 'package:otex/features/catalog/domain/usecases/get_subcategories_by_category_id_usecase.dart';

part 'catalog_state.dart';

@injectable
class CatalogCubit extends Cubit<CatalogState> {
  final GetAllCategoriesUseCase _getAllCategoriesUseCase;
  final GetAllSubcategoriesUseCase _getAllSubcategoriesUseCase;
  final GetSubcategoriesByCategoryIdUseCase
  _getSubcategoriesByCategoryIdUseCase;
  CatalogCubit(
    this._getAllCategoriesUseCase,
    this._getAllSubcategoriesUseCase,
    this._getSubcategoriesByCategoryIdUseCase,
  ) : super(CatalogState());

  Future<void> init() async {
    await getCategories();
    await getSubcategories();
  }

  Future<void> getCategories() async {
    emit(state.copyWith(isCategoriesLoading: true));

    final result = await _getAllCategoriesUseCase.call();

    result.fold(
      (error) => emit(
        state.copyWith(isCategoriesLoading: false, error: error.message),
      ),
      (categories) => emit(
        state.copyWith(
          isCategoriesLoading: false,
          categories:
              [Category(id: 0, name: "all_deals"), ...categories]
                  as List<Category>?,
        ),
      ),
    );
  }

  Future<void> getSubcategories() async {
    emit(state.copyWith(isSubcategoriesLoading: true));

    final result = await _getAllSubcategoriesUseCase.call();

    result.fold(
      (error) => emit(
        state.copyWith(isSubcategoriesLoading: false, error: error.message),
      ),
      (subcategories) => emit(
        state.copyWith(
          isSubcategoriesLoading: false,
          subcategories: subcategories as List<Subcategory>?,
        ),
      ),
    );
  }

  Future<void> onCategorySelected(Category category) async {
    emit(
      state.copyWith(
        isSubcategoriesLoading: true,
        subcategories: [], // Clear old list
        selectedCategory: category,
        selectedSubcategoryIndex: -1,
      ),
    );

    // If all_deals selected load all subcategories
    if (category.id == 0) {
      await getSubcategories();
      return;
    }

    final result = await _getSubcategoriesByCategoryIdUseCase.call(category.id);

    result.fold(
      (error) => emit(
        state.copyWith(isSubcategoriesLoading: false, error: error.message),
      ),
      (subcategories) => emit(
        state.copyWith(
          isSubcategoriesLoading: false,
          subcategories: subcategories as List<Subcategory>?,
          selectedSubcategoryIndex: -1,
        ),
      ),
    );
  }

  Future<void> onSubcategorySelected(int index) async {
    emit(state.copyWith(selectedSubcategoryIndex: index));
  }
}
