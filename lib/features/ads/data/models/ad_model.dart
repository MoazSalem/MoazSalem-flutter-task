import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_model.freezed.dart';
part 'ad_model.g.dart';

@freezed
abstract class AdModel with _$AdModel {
  const factory AdModel({
    required int id,
    required String name,
    required double originalPrice,
    required double discountedPrice,
    required String imageUrl,
    required double soldCount,
    required List<int> subcategoriesIds,
  }) = _AdModel;

  factory AdModel.fromJson(Map<String, dynamic> json) =>
      _$AdModelFromJson(json);
}
