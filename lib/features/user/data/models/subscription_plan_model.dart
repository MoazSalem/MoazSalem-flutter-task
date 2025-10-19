import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:otex/core/utils/converters.dart';
import 'package:otex/features/user/domain/entities/subscription_plan.dart';

part 'subscription_plan_model.freezed.dart';
part 'subscription_plan_model.g.dart';

@freezed
abstract class SubscriptionPlanModel with _$SubscriptionPlanModel {
  const factory SubscriptionPlanModel({
    required int id,
    required String description,
    required double price,
    @JsonStringToIntListConverter() required List<int> perks,
    int? viewsMultiplier,
    @BoolToIntConverter() required bool bestValue,
    @BoolToIntConverter() required bool highestViews,
  }) = _SubscriptionPlanModel;

  factory SubscriptionPlanModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanModelFromJson(json);
}

extension ToEntity on SubscriptionPlanModel {
  SubscriptionPlan toEntity() {
    return SubscriptionPlan(
      description: description,
      price: price,
      perks: perks,
      viewsMultiplier: viewsMultiplier,
      bestValue: bestValue,
      highestViews: highestViews,
    );
  }
}
