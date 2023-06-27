import 'package:dio/dio.dart';

import '../configs/interceptors/observer_interceptor.dart';

Dio createDio({BaseOptions? baseOptions, List<Interceptor>? interceptors}) {
  Dio dio = Dio(
    baseOptions?.copyWith(
            connectTimeout: const Duration(milliseconds: 5000),
            receiveTimeout: const Duration(milliseconds: 5000),
            headers: {
              'Content-Type': 'application/json',
            }) ??
        BaseOptions(
            connectTimeout: const Duration(milliseconds: 5000),
            receiveTimeout: const Duration(milliseconds: 5000),
            headers: {
              'Content-Type': 'application/json',
            }),
  );

  if (interceptors != null) {
    dio.interceptors.addAll([LoggingInterceptor(), ...interceptors]);
  }

  return dio;
}
