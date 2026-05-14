// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_plant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyPlant {

 String get id; String get name; String get room; String get notes;@JsonKey(includeFromJson: false, includeToJson: false) Uint8List? get imageBytes;
/// Create a copy of MyPlant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyPlantCopyWith<MyPlant> get copyWith => _$MyPlantCopyWithImpl<MyPlant>(this as MyPlant, _$identity);

  /// Serializes this MyPlant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPlant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.room, room) || other.room == room)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.imageBytes, imageBytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,room,notes,const DeepCollectionEquality().hash(imageBytes));

@override
String toString() {
  return 'MyPlant(id: $id, name: $name, room: $room, notes: $notes, imageBytes: $imageBytes)';
}


}

/// @nodoc
abstract mixin class $MyPlantCopyWith<$Res>  {
  factory $MyPlantCopyWith(MyPlant value, $Res Function(MyPlant) _then) = _$MyPlantCopyWithImpl;
@useResult
$Res call({
 String id, String name, String room, String notes,@JsonKey(includeFromJson: false, includeToJson: false) Uint8List? imageBytes
});




}
/// @nodoc
class _$MyPlantCopyWithImpl<$Res>
    implements $MyPlantCopyWith<$Res> {
  _$MyPlantCopyWithImpl(this._self, this._then);

  final MyPlant _self;
  final $Res Function(MyPlant) _then;

/// Create a copy of MyPlant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? room = null,Object? notes = null,Object? imageBytes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,imageBytes: freezed == imageBytes ? _self.imageBytes : imageBytes // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyPlant].
extension MyPlantPatterns on MyPlant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyPlant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyPlant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyPlant value)  $default,){
final _that = this;
switch (_that) {
case _MyPlant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyPlant value)?  $default,){
final _that = this;
switch (_that) {
case _MyPlant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String room,  String notes, @JsonKey(includeFromJson: false, includeToJson: false)  Uint8List? imageBytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyPlant() when $default != null:
return $default(_that.id,_that.name,_that.room,_that.notes,_that.imageBytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String room,  String notes, @JsonKey(includeFromJson: false, includeToJson: false)  Uint8List? imageBytes)  $default,) {final _that = this;
switch (_that) {
case _MyPlant():
return $default(_that.id,_that.name,_that.room,_that.notes,_that.imageBytes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String room,  String notes, @JsonKey(includeFromJson: false, includeToJson: false)  Uint8List? imageBytes)?  $default,) {final _that = this;
switch (_that) {
case _MyPlant() when $default != null:
return $default(_that.id,_that.name,_that.room,_that.notes,_that.imageBytes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyPlant implements MyPlant {
  const _MyPlant({required this.id, required this.name, required this.room, required this.notes, @JsonKey(includeFromJson: false, includeToJson: false) this.imageBytes});
  factory _MyPlant.fromJson(Map<String, dynamic> json) => _$MyPlantFromJson(json);

@override final  String id;
@override final  String name;
@override final  String room;
@override final  String notes;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Uint8List? imageBytes;

/// Create a copy of MyPlant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyPlantCopyWith<_MyPlant> get copyWith => __$MyPlantCopyWithImpl<_MyPlant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyPlantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyPlant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.room, room) || other.room == room)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.imageBytes, imageBytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,room,notes,const DeepCollectionEquality().hash(imageBytes));

@override
String toString() {
  return 'MyPlant(id: $id, name: $name, room: $room, notes: $notes, imageBytes: $imageBytes)';
}


}

/// @nodoc
abstract mixin class _$MyPlantCopyWith<$Res> implements $MyPlantCopyWith<$Res> {
  factory _$MyPlantCopyWith(_MyPlant value, $Res Function(_MyPlant) _then) = __$MyPlantCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String room, String notes,@JsonKey(includeFromJson: false, includeToJson: false) Uint8List? imageBytes
});




}
/// @nodoc
class __$MyPlantCopyWithImpl<$Res>
    implements _$MyPlantCopyWith<$Res> {
  __$MyPlantCopyWithImpl(this._self, this._then);

  final _MyPlant _self;
  final $Res Function(_MyPlant) _then;

/// Create a copy of MyPlant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? room = null,Object? notes = null,Object? imageBytes = freezed,}) {
  return _then(_MyPlant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,room: null == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,imageBytes: freezed == imageBytes ? _self.imageBytes : imageBytes // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}


}

// dart format on
