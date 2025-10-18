import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:otex/features/catalog/domain/entities/category.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({required int id, required String name}) =
      _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

extension ToEntity on CategoryModel {
  Category toEntity() {
    return Category(id: id, name: name);
  }
}
