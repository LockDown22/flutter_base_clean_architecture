import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/di/di.dart';
import 'package:flutter_clean_architecture/services/local_storage_service/shared_preference_service.dart';

class AttachTokenInterceptor extends InterceptorsWrapper {
  AttachTokenInterceptor();

  final sharedPre = getIt<SharedPreferenceService>();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final authCredential = sharedPre.token;
    if (authCredential != null) {
      options.headers
          .putIfAbsent('Authorization', () => 'Bearer $authCredential');
    } else {
      log('Auth token is null');
    }

    return handler.next(options);
  }
}
