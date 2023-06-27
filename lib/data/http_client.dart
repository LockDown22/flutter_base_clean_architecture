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
              // baseUrl: 'hahahahah',
              ),
          interceptors: [
            AttachTokenInterceptor(),
          ]);
}
