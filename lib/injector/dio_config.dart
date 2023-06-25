import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_clean_architecture/configs/app_config.dart';
import 'package:get_it/get_it.dart';

import 'injector.dart';

class DioConfig {
  DioConfig._();
  static const String dioInstanceName = 'dioInstance';

  static final GetIt _injector = Injector.instance;

  static void setUp() {
    setUpDio();
  }

  static void setUpDio() {
    _injector.registerLazySingleton<Dio>(
      () {
        final Dio dio = Dio(
          BaseOptions(
            connectTimeout: const Duration(milliseconds: 5000),
            receiveTimeout: const Duration(milliseconds: 3000),
            baseUrl: AppConfig.baseUrl,
          ),
        );

        if (!kReleaseMode) {
          dio.interceptors.add(
            LogInterceptor(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
              responseBody: true,
              request: false,
            ),
          );
        }
        dio.interceptors.add(InterceptorsWrapper(
          onRequest:
              (RequestOptions options, RequestInterceptorHandler handler) {
            // Xử lý trước khi gửi yêu cầu
            return handler.next(options);
          },
          onResponse: (Response response, ResponseInterceptorHandler handler) {
            // Xử lý phản hồi trước khi nó được trả về
            return handler.next(response);
          },
          onError: (DioException error, ErrorInterceptorHandler handler) {
            // Xử lý lỗi trước khi nó được thông báo
            return handler.next(error);
          },
        ));

        return dio;
      },
      instanceName: dioInstanceName,
    );
  }
}
