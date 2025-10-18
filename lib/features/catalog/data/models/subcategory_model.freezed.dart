// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategory_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubcategoryModel {

 int get id; String get name; int get categoryId; String get imageUrl;
/// Create a copy of SubcategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubcategoryModelCopyWith<SubcategoryModel> get copyWith => _$SubcategoryModelCopyWithImpl<SubcategoryModel>(this as SubcategoryModel, _$identity);

  /// Serializes this SubcategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubcategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,categoryId,imageUrl);

@override
String toString() {
  return 'SubcategoryModel(id: $id, name: $name, categoryId: $categoryId, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $SubcategoryModelCopyWith<$Res>  {
  factory $SubcategoryModelCopyWith(SubcategoryModel value, $Res Function(SubcategoryModel) _then) = _$SubcategoryModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int categoryId, String imageUrl
});




}
/// @nodoc
class _$SubcategoryModelCopyWithImpl<$Res>
    implements $SubcategoryModelCopyWith<$Res> {
  _$SubcategoryModelCopyWithImpl(this._self, this._then);

  final SubcategoryModel _self;
  final $Res Function(SubcategoryModel) _then;

/// Create a copy of SubcategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? categoryId = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubcategoryModel].
extension SubcategoryModelPatterns on SubcategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubcategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubcategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubcategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _SubcategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubcategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubcategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int categoryId,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubcategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.categoryId,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int categoryId,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _SubcategoryModel():
return $default(_that.id,_that.name,_that.categoryId,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int categoryId,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _SubcategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.categoryId,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubcategoryModel implements SubcategoryModel {
  const _SubcategoryModel({required this.id, required this.name, required this.categoryId, required this.imageUrl});
  factory _SubcategoryModel.fromJson(Map<String, dynamic> json) => _$SubcategoryModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int categoryId;
@override final  String imageUrl;

/// Create a copy of SubcategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubcategoryModelCopyWith<_SubcategoryModel> get copyWith => __$SubcategoryModelCopyWithImpl<_SubcategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubcategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubcategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,categoryId,imageUrl);

@override
String toString() {
  return 'SubcategoryModel(id: $id, name: $name, categoryId: $categoryId, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$SubcategoryModelCopyWith<$Res> implements $SubcategoryModelCopyWith<$Res> {
  factory _$SubcategoryModelCopyWith(_SubcategoryModel value, $Res Function(_SubcategoryModel) _then) = __$SubcategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int categoryId, String imageUrl
});




}
/// @nodoc
class __$SubcategoryModelCopyWithImpl<$Res>
    implements _$SubcategoryModelCopyWith<$Res> {
  __$SubcategoryModelCopyWithImpl(this._self, this._then);

  final _SubcategoryModel _self;
  final $Res Function(_SubcategoryModel) _then;

/// Create a copy of SubcategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? categoryId = null,Object? imageUrl = null,}) {
  return _then(_SubcategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
