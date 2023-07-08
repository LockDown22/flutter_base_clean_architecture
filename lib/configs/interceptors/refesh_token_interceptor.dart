import 'dart:async';

import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  final Dio dio;
  final String refreshToken;
  String? accessToken;
  bool isRefreshing = false;
  final _completer = Completer<void>();

  TokenInterceptor(this.dio, this.refreshToken);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 && !isRefreshing) {
      isRefreshing = true;
      await _refreshToken();
      isRefreshing = false;

      if (accessToken != null) {
        // Retry the failed request with the new access token
        dio
            .fetch(err.requestOptions)
            .then(handler.resolve, onError: handler.reject);
        return;
      }
    }

    handler.next(err);
  }

  Future<void> _refreshToken() async {
    if (!_completer.isCompleted) {
      try {
        // Perform the token refresh request using the refresh token
        final response = await dio
            .post('/refresh-token', data: {'refresh_token': refreshToken});

        // Extract the new access token from the response
        final newAccessToken = response.data['access_token'];

        // Update the access token and complete the completer
        accessToken = newAccessToken;
        _completer.complete();
      } catch (e) {
        // Handle any errors during token refresh
        _completer.completeError(e);
      }
    }

    // Wait for the token refresh process to complete
    await _completer.future;
    // _completer.completeError();
  }
}
