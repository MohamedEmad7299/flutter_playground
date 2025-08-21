
import 'package:flutter_playground/riverpod_tasks/weather_screen/data/remote/dtos/weather_dto.dart';
import 'package:flutter_playground/riverpod_tasks/weather_screen/data/remote/weather_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/api_client/dio_client.dart';


enum Country { egypt, yemen }

final countryProvider = StateProvider<Country>((ref) => Country.egypt);

final weatherProvider = FutureProvider.family<WeatherDto,WeatherRequest>(
    (ref,request){
      final repo = WeatherRepository(DioClient());
      return repo.getCurrentWeather(
          q: request.q,
          apiKey: request.apiKey
      );
    }
);

class WeatherRequest {
  final String q;
  final String apiKey;

  WeatherRequest({
    required this.q,
    required this.apiKey,
  });
}