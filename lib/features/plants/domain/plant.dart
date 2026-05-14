import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant.freezed.dart';
part 'plant.g.dart';

@freezed
abstract class Plant with _$Plant {
  const factory Plant({
    required int id,

    @JsonKey(name: 'common_name', fromJson: _stringFromJson)
    required String commonName,

    @JsonKey(fromJson: _stringFromJson)
    required String genus,

    @JsonKey(
      name: 'default_image',
      fromJson: _imageFromJson,
    )
    required String imageUrl,
  }) = _Plant;

  factory Plant.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PlantFromJson(json);
}

String _stringFromJson(Object? value) {
  if (value == null) {
    return 'Unknown';
  }

  return value.toString();
}

String _imageFromJson(
  Map<String, dynamic>? json,
) {
  if (json == null) {
    return '';
  }

  return json['regular_url'] ?? '';
}