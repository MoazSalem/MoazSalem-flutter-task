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
  perks: const JsonStringToIntListConverter().fromJson(json['perks'] as String),
  viewsMultiplier: (json['viewsMultiplier'] as num?)?.toInt(),
  bestValue: const BoolToIntConverter().fromJson(
    (json['bestValue'] as num).toInt(),
  ),
  highestViews: const BoolToIntConverter().fromJson(
    (json['highestViews'] as num).toInt(),
  ),
);

Map<String, dynamic> _$SubscriptionPlanModelToJson(
  _SubscriptionPlanModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'description': instance.description,
  'price': instance.price,
  'perks': const JsonStringToIntListConverter().toJson(instance.perks),
  'viewsMultiplier': instance.viewsMultiplier,
  'bestValue': const BoolToIntConverter().toJson(instance.bestValue),
  'highestViews': const BoolToIntConverter().toJson(instance.highestViews),
};
