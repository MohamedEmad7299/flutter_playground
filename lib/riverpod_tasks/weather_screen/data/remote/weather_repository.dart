

import 'package:flutter_playground/riverpod_tasks/weather_screen/data/remote/dtos/weather_dto.dart';
import '../../../../../../core/api_client/dio_client.dart';
import '../../../../core/constants/end_points.dart';

class WeatherRepository {

  final DioClient dioClient;

  WeatherRepository(this.dioClient);

  Future<WeatherDto> getCurrentWeather({
    required String q,
    required String apiKey,
  }) async {

    try {
      final response = await dioClient.dio.get(
        EndPoints.currentWeather,
        queryParameters: {
          "q": q,
          "key": apiKey
        },
      );

      if (response.statusCode == 200) {
        return WeatherDto.fromJson(response.data);
      } else {
        throw Exception("Failed to fetch data: ${response.statusMessage}");
      }
    } catch (e) {
      throw Exception("Failed to fetch current weather: ${e.toString()}");
    }
  }
}
