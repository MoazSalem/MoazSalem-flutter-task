import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:otex/features/catalog/domain/entities/subcategory.dart';

part 'subcategory_model.freezed.dart';
part 'subcategory_model.g.dart';

@freezed
abstract class SubcategoryModel with _$SubcategoryModel {
  const factory SubcategoryModel({
    required int id,
    required String name,
    required int categoryId,
    required String imageUrl,
  }) = _SubcategoryModel;

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryModelFromJson(json);
}

extension ToSubcategory on SubcategoryModel {
  Subcategory toSubcategory() {
    return Subcategory(
      id: id,
      name: name,
      categoryId: categoryId,
      imageUrl: imageUrl,
    );
  }
}
