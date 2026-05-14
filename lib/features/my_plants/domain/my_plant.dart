import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_plant.freezed.dart';
part 'my_plant.g.dart';

@freezed
abstract class MyPlant with _$MyPlant {
  const factory MyPlant({
    required String id,
    required String name,
    required String room,
    required String notes,

    @JsonKey(includeFromJson: false, includeToJson: false)
    Uint8List? imageBytes,
  }) = _MyPlant;

  factory MyPlant.fromJson(Map<String, dynamic> json) =>
      _$MyPlantFromJson(json);
}