// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionPlanModel {

 int get id; String get description; double get price; List<int> get perks; int? get viewsMultiplier; bool get bestValue; bool get highestViews;
/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionPlanModelCopyWith<SubscriptionPlanModel> get copyWith => _$SubscriptionPlanModelCopyWithImpl<SubscriptionPlanModel>(this as SubscriptionPlanModel, _$identity);

  /// Serializes this SubscriptionPlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.perks, perks)&&(identical(other.viewsMultiplier, viewsMultiplier) || other.viewsMultiplier == viewsMultiplier)&&(identical(other.bestValue, bestValue) || other.bestValue == bestValue)&&(identical(other.highestViews, highestViews) || other.highestViews == highestViews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,price,const DeepCollectionEquality().hash(perks),viewsMultiplier,bestValue,highestViews);

@override
String toString() {
  return 'SubscriptionPlanModel(id: $id, description: $description, price: $price, perks: $perks, viewsMultiplier: $viewsMultiplier, bestValue: $bestValue, highestViews: $highestViews)';
}


}

/// @nodoc
abstract mixin class $SubscriptionPlanModelCopyWith<$Res>  {
  factory $SubscriptionPlanModelCopyWith(SubscriptionPlanModel value, $Res Function(SubscriptionPlanModel) _then) = _$SubscriptionPlanModelCopyWithImpl;
@useResult
$Res call({
 int id, String description, double price, List<int> perks, int? viewsMultiplier, bool bestValue, bool highestViews
});




}
/// @nodoc
class _$SubscriptionPlanModelCopyWithImpl<$Res>
    implements $SubscriptionPlanModelCopyWith<$Res> {
  _$SubscriptionPlanModelCopyWithImpl(this._self, this._then);

  final SubscriptionPlanModel _self;
  final $Res Function(SubscriptionPlanModel) _then;

/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? description = null,Object? price = null,Object? perks = null,Object? viewsMultiplier = freezed,Object? bestValue = null,Object? highestViews = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,perks: null == perks ? _self.perks : perks // ignore: cast_nullable_to_non_nullable
as List<int>,viewsMultiplier: freezed == viewsMultiplier ? _self.viewsMultiplier : viewsMultiplier // ignore: cast_nullable_to_non_nullable
as int?,bestValue: null == bestValue ? _self.bestValue : bestValue // ignore: cast_nullable_to_non_nullable
as bool,highestViews: null == highestViews ? _self.highestViews : highestViews // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionPlanModel].
extension SubscriptionPlanModelPatterns on SubscriptionPlanModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionPlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionPlanModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionPlanModel value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlanModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionPlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlanModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String description,  double price,  List<int> perks,  int? viewsMultiplier,  bool bestValue,  bool highestViews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionPlanModel() when $default != null:
return $default(_that.id,_that.description,_that.price,_that.perks,_that.viewsMultiplier,_that.bestValue,_that.highestViews);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String description,  double price,  List<int> perks,  int? viewsMultiplier,  bool bestValue,  bool highestViews)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlanModel():
return $default(_that.id,_that.description,_that.price,_that.perks,_that.viewsMultiplier,_that.bestValue,_that.highestViews);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String description,  double price,  List<int> perks,  int? viewsMultiplier,  bool bestValue,  bool highestViews)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlanModel() when $default != null:
return $default(_that.id,_that.description,_that.price,_that.perks,_that.viewsMultiplier,_that.bestValue,_that.highestViews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionPlanModel implements SubscriptionPlanModel {
  const _SubscriptionPlanModel({required this.id, required this.description, required this.price, required final  List<int> perks, this.viewsMultiplier, required this.bestValue, required this.highestViews}): _perks = perks;
  factory _SubscriptionPlanModel.fromJson(Map<String, dynamic> json) => _$SubscriptionPlanModelFromJson(json);

@override final  int id;
@override final  String description;
@override final  double price;
 final  List<int> _perks;
@override List<int> get perks {
  if (_perks is EqualUnmodifiableListView) return _perks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_perks);
}

@override final  int? viewsMultiplier;
@override final  bool bestValue;
@override final  bool highestViews;

/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionPlanModelCopyWith<_SubscriptionPlanModel> get copyWith => __$SubscriptionPlanModelCopyWithImpl<_SubscriptionPlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionPlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other._perks, _perks)&&(identical(other.viewsMultiplier, viewsMultiplier) || other.viewsMultiplier == viewsMultiplier)&&(identical(other.bestValue, bestValue) || other.bestValue == bestValue)&&(identical(other.highestViews, highestViews) || other.highestViews == highestViews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,price,const DeepCollectionEquality().hash(_perks),viewsMultiplier,bestValue,highestViews);

@override
String toString() {
  return 'SubscriptionPlanModel(id: $id, description: $description, price: $price, perks: $perks, viewsMultiplier: $viewsMultiplier, bestValue: $bestValue, highestViews: $highestViews)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionPlanModelCopyWith<$Res> implements $SubscriptionPlanModelCopyWith<$Res> {
  factory _$SubscriptionPlanModelCopyWith(_SubscriptionPlanModel value, $Res Function(_SubscriptionPlanModel) _then) = __$SubscriptionPlanModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String description, double price, List<int> perks, int? viewsMultiplier, bool bestValue, bool highestViews
});




}
/// @nodoc
class __$SubscriptionPlanModelCopyWithImpl<$Res>
    implements _$SubscriptionPlanModelCopyWith<$Res> {
  __$SubscriptionPlanModelCopyWithImpl(this._self, this._then);

  final _SubscriptionPlanModel _self;
  final $Res Function(_SubscriptionPlanModel) _then;

/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? description = null,Object? price = null,Object? perks = null,Object? viewsMultiplier = freezed,Object? bestValue = null,Object? highestViews = null,}) {
  return _then(_SubscriptionPlanModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,perks: null == perks ? _self._perks : perks // ignore: cast_nullable_to_non_nullable
as List<int>,viewsMultiplier: freezed == viewsMultiplier ? _self.viewsMultiplier : viewsMultiplier // ignore: cast_nullable_to_non_nullable
as int?,bestValue: null == bestValue ? _self.bestValue : bestValue // ignore: cast_nullable_to_non_nullable
as bool,highestViews: null == highestViews ? _self.highestViews : highestViews // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
