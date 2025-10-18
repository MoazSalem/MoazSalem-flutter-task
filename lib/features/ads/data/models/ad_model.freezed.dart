// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdModel {

 int get id; String get name; double get originalPrice; double get discountedPrice; String get imageUrl; double get soldCount;
/// Create a copy of AdModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdModelCopyWith<AdModel> get copyWith => _$AdModelCopyWithImpl<AdModel>(this as AdModel, _$identity);

  /// Serializes this AdModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,originalPrice,discountedPrice,imageUrl,soldCount);

@override
String toString() {
  return 'AdModel(id: $id, name: $name, originalPrice: $originalPrice, discountedPrice: $discountedPrice, imageUrl: $imageUrl, soldCount: $soldCount)';
}


}

/// @nodoc
abstract mixin class $AdModelCopyWith<$Res>  {
  factory $AdModelCopyWith(AdModel value, $Res Function(AdModel) _then) = _$AdModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, double originalPrice, double discountedPrice, String imageUrl, double soldCount
});




}
/// @nodoc
class _$AdModelCopyWithImpl<$Res>
    implements $AdModelCopyWith<$Res> {
  _$AdModelCopyWithImpl(this._self, this._then);

  final AdModel _self;
  final $Res Function(AdModel) _then;

/// Create a copy of AdModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? originalPrice = null,Object? discountedPrice = null,Object? imageUrl = null,Object? soldCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double,discountedPrice: null == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as double,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,soldCount: null == soldCount ? _self.soldCount : soldCount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AdModel].
extension AdModelPatterns on AdModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdModel value)  $default,){
final _that = this;
switch (_that) {
case _AdModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double originalPrice,  double discountedPrice,  String imageUrl,  double soldCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdModel() when $default != null:
return $default(_that.id,_that.name,_that.originalPrice,_that.discountedPrice,_that.imageUrl,_that.soldCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double originalPrice,  double discountedPrice,  String imageUrl,  double soldCount)  $default,) {final _that = this;
switch (_that) {
case _AdModel():
return $default(_that.id,_that.name,_that.originalPrice,_that.discountedPrice,_that.imageUrl,_that.soldCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double originalPrice,  double discountedPrice,  String imageUrl,  double soldCount)?  $default,) {final _that = this;
switch (_that) {
case _AdModel() when $default != null:
return $default(_that.id,_that.name,_that.originalPrice,_that.discountedPrice,_that.imageUrl,_that.soldCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdModel implements AdModel {
  const _AdModel({required this.id, required this.name, required this.originalPrice, required this.discountedPrice, required this.imageUrl, required this.soldCount});
  factory _AdModel.fromJson(Map<String, dynamic> json) => _$AdModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  double originalPrice;
@override final  double discountedPrice;
@override final  String imageUrl;
@override final  double soldCount;

/// Create a copy of AdModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdModelCopyWith<_AdModel> get copyWith => __$AdModelCopyWithImpl<_AdModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.soldCount, soldCount) || other.soldCount == soldCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,originalPrice,discountedPrice,imageUrl,soldCount);

@override
String toString() {
  return 'AdModel(id: $id, name: $name, originalPrice: $originalPrice, discountedPrice: $discountedPrice, imageUrl: $imageUrl, soldCount: $soldCount)';
}


}

/// @nodoc
abstract mixin class _$AdModelCopyWith<$Res> implements $AdModelCopyWith<$Res> {
  factory _$AdModelCopyWith(_AdModel value, $Res Function(_AdModel) _then) = __$AdModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double originalPrice, double discountedPrice, String imageUrl, double soldCount
});




}
/// @nodoc
class __$AdModelCopyWithImpl<$Res>
    implements _$AdModelCopyWith<$Res> {
  __$AdModelCopyWithImpl(this._self, this._then);

  final _AdModel _self;
  final $Res Function(_AdModel) _then;

/// Create a copy of AdModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? originalPrice = null,Object? discountedPrice = null,Object? imageUrl = null,Object? soldCount = null,}) {
  return _then(_AdModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as double,discountedPrice: null == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as double,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,soldCount: null == soldCount ? _self.soldCount : soldCount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
