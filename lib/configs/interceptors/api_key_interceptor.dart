import 'package:dio/dio.dart';

class ApiKeyInterceptor extends Interceptor {
  final String apiKey;

  ApiKeyInterceptor(this.apiKey);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.path = '${options.path}?apiKey=$apiKey';
    super.onRequest(options, handler);
  }
}
