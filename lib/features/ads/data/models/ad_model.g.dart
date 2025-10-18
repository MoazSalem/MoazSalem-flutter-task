// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdModel _$AdModelFromJson(Map<String, dynamic> json) => _AdModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  originalPrice: (json['originalPrice'] as num).toDouble(),
  discountedPrice: (json['discountedPrice'] as num).toDouble(),
  imageUrl: json['imageUrl'] as String,
  soldCount: (json['soldCount'] as num).toDouble(),
);

Map<String, dynamic> _$AdModelToJson(_AdModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'originalPrice': instance.originalPrice,
  'discountedPrice': instance.discountedPrice,
  'imageUrl': instance.imageUrl,
  'soldCount': instance.soldCount,
};
