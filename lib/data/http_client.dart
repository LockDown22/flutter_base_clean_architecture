import 'package:flutter_clean_architecture/configs/interceptors/attach_token_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import 'dio_custom.dart';

@module
abstract class HttpClient {
  @Named('baseApi')
  @singleton
  Dio baseApi() => createDio(
          baseOptions: BaseOptions(
            baseUrl: 'https://643eba07c72fda4a0bff46ab.mockapi.io/api/v1/',
          ),
          interceptors: [
            AttachTokenInterceptor(),
          ]);
}
