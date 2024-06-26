import 'package:dio/dio.dart';
import 'package:furniture_shop/data/source/network/constants.dart';

abstract class DioClient {
  Dio dio() => Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
          sendTimeout: const Duration(seconds: 10),
        ),
      );
}
