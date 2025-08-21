
import 'package:dio/dio.dart';

import '../constants/end_points.dart';

class DioClient {

  final Dio _dio;

  DioClient() : _dio = Dio(
    BaseOptions(
      baseUrl: EndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30)
    )
  );

  Dio get dio => _dio;
}