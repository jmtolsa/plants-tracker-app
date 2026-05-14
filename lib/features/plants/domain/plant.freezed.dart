// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Plant {

 int get id;@JsonKey(name: 'common_name', fromJson: _stringFromJson) String get commonName;@JsonKey(fromJson: _stringFromJson) String get watering;@JsonKey(name: 'default_image', fromJson: _imageFromJson) String get imageUrl;
/// Create a copy of Plant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantCopyWith<Plant> get copyWith => _$PlantCopyWithImpl<Plant>(this as Plant, _$identity);

  /// Serializes this Plant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Plant&&(identical(other.id, id) || other.id == id)&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.watering, watering) || other.watering == watering)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,commonName,watering,imageUrl);

@override
String toString() {
  return 'Plant(id: $id, commonName: $commonName, watering: $watering, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $PlantCopyWith<$Res>  {
  factory $PlantCopyWith(Plant value, $Res Function(Plant) _then) = _$PlantCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'common_name', fromJson: _stringFromJson) String commonName,@JsonKey(fromJson: _stringFromJson) String watering,@JsonKey(name: 'default_image', fromJson: _imageFromJson) String imageUrl
});




}
/// @nodoc
class _$PlantCopyWithImpl<$Res>
    implements $PlantCopyWith<$Res> {
  _$PlantCopyWithImpl(this._self, this._then);

  final Plant _self;
  final $Res Function(Plant) _then;

/// Create a copy of Plant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? commonName = null,Object? watering = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,commonName: null == commonName ? _self.commonName : commonName // ignore: cast_nullable_to_non_nullable
as String,watering: null == watering ? _self.watering : watering // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Plant].
extension PlantPatterns on Plant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Plant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Plant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Plant value)  $default,){
final _that = this;
switch (_that) {
case _Plant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Plant value)?  $default,){
final _that = this;
switch (_that) {
case _Plant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'common_name', fromJson: _stringFromJson)  String commonName, @JsonKey(fromJson: _stringFromJson)  String watering, @JsonKey(name: 'default_image', fromJson: _imageFromJson)  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Plant() when $default != null:
return $default(_that.id,_that.commonName,_that.watering,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'common_name', fromJson: _stringFromJson)  String commonName, @JsonKey(fromJson: _stringFromJson)  String watering, @JsonKey(name: 'default_image', fromJson: _imageFromJson)  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _Plant():
return $default(_that.id,_that.commonName,_that.watering,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'common_name', fromJson: _stringFromJson)  String commonName, @JsonKey(fromJson: _stringFromJson)  String watering, @JsonKey(name: 'default_image', fromJson: _imageFromJson)  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _Plant() when $default != null:
return $default(_that.id,_that.commonName,_that.watering,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Plant implements Plant {
  const _Plant({required this.id, @JsonKey(name: 'common_name', fromJson: _stringFromJson) required this.commonName, @JsonKey(fromJson: _stringFromJson) required this.watering, @JsonKey(name: 'default_image', fromJson: _imageFromJson) required this.imageUrl});
  factory _Plant.fromJson(Map<String, dynamic> json) => _$PlantFromJson(json);

@override final  int id;
@override@JsonKey(name: 'common_name', fromJson: _stringFromJson) final  String commonName;
@override@JsonKey(fromJson: _stringFromJson) final  String watering;
@override@JsonKey(name: 'default_image', fromJson: _imageFromJson) final  String imageUrl;

/// Create a copy of Plant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantCopyWith<_Plant> get copyWith => __$PlantCopyWithImpl<_Plant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Plant&&(identical(other.id, id) || other.id == id)&&(identical(other.commonName, commonName) || other.commonName == commonName)&&(identical(other.watering, watering) || other.watering == watering)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,commonName,watering,imageUrl);

@override
String toString() {
  return 'Plant(id: $id, commonName: $commonName, watering: $watering, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$PlantCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory _$PlantCopyWith(_Plant value, $Res Function(_Plant) _then) = __$PlantCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'common_name', fromJson: _stringFromJson) String commonName,@JsonKey(fromJson: _stringFromJson) String watering,@JsonKey(name: 'default_image', fromJson: _imageFromJson) String imageUrl
});




}
/// @nodoc
class __$PlantCopyWithImpl<$Res>
    implements _$PlantCopyWith<$Res> {
  __$PlantCopyWithImpl(this._self, this._then);

  final _Plant _self;
  final $Res Function(_Plant) _then;

/// Create a copy of Plant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? commonName = null,Object? watering = null,Object? imageUrl = null,}) {
  return _then(_Plant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,commonName: null == commonName ? _self.commonName : commonName // ignore: cast_nullable_to_non_nullable
as String,watering: null == watering ? _self.watering : watering // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
