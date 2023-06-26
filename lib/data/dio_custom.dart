import 'package:dio/dio.dart';

Dio createDio({BaseOptions? baseOptions, List<Interceptor>? interceptors}) {
  Dio dio = Dio(baseOptions);

  if (interceptors != null) {
    dio.interceptors.addAll(interceptors);
  }

  return dio;
}
