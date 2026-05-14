// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Plant _$PlantFromJson(Map<String, dynamic> json) => _Plant(
  id: (json['id'] as num).toInt(),
  commonName: _stringFromJson(json['common_name']),
  watering: _stringFromJson(json['watering']),
  imageUrl: _imageFromJson(json['default_image'] as Map<String, dynamic>?),
);

Map<String, dynamic> _$PlantToJson(_Plant instance) => <String, dynamic>{
  'id': instance.id,
  'common_name': instance.commonName,
  'watering': instance.watering,
  'default_image': instance.imageUrl,
};
