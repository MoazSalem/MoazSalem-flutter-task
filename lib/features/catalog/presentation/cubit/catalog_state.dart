part of 'catalog_cubit.dart';

@immutable
class CatalogState extends Equatable {
  final bool isCategoriesLoading;

  final bool isSubcategoriesLoading;

  final List<Category> categories;

  final List<Subcategory> subcategories;

  // The currently selected main category
  final Category? selectedCategory;

  // To hold any error messages
  final String? error;

  const CatalogState({
    this.isCategoriesLoading = false,
    this.isSubcategoriesLoading = false,
    this.categories = const [],
    this.subcategories = const [],
    this.selectedCategory,
    this.error,
  });

  CatalogState copyWith({
    bool? isCategoriesLoading,
    bool? isSubcategoriesLoading,
    List<Category>? categories,
    List<Subcategory>? subcategories,
    Category? selectedCategory,
    String? error,
  }) {
    return CatalogState(
      isCategoriesLoading: isCategoriesLoading ?? this.isCategoriesLoading,
      isSubcategoriesLoading:
          isSubcategoriesLoading ?? this.isSubcategoriesLoading,
      categories: categories ?? this.categories,
      subcategories: subcategories ?? this.subcategories,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
    isCategoriesLoading,
    isSubcategoriesLoading,
    categories,
    subcategories,
    selectedCategory,
    error,
  ];
}
