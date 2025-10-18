// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionPlanModel _$SubscriptionPlanModelFromJson(
  Map<String, dynamic> json,
) => _SubscriptionPlanModel(
  id: (json['id'] as num).toInt(),
  description: json['description'] as String,
  price: (json['price'] as num).toDouble(),
  perks: (json['perks'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  viewsMultiplier: (json['viewsMultiplier'] as num?)?.toInt(),
  bestValue: json['bestValue'] as bool,
  highestViews: json['highestViews'] as bool,
);

Map<String, dynamic> _$SubscriptionPlanModelToJson(
  _SubscriptionPlanModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'description': instance.description,
  'price': instance.price,
  'perks': instance.perks,
  'viewsMultiplier': instance.viewsMultiplier,
  'bestValue': instance.bestValue,
  'highestViews': instance.highestViews,
};
