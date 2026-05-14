import 'package:dio/dio.dart';

import '../domain/plant.dart';

class PlantsRepository {
  PlantsRepository();

  final Dio _dio = Dio();

  Future<List<Plant>> fetchPlants() async {
    final response = await _dio.get(
      'https://perenual.com/api/v2/species-list',
      queryParameters: {
        'key': 'sk-dSm96a045548bd6d217248',
        'page': 1,
      },
    );

    final List<dynamic> data =
        response.data['data'];

    return data
        .map(
          (json) => Plant.fromJson(json),
        )
        .toList();
  }
}