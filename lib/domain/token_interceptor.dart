import 'package:dio/dio.dart';
import 'package:exeditec_auth_client/domain/shared_pref.dart';

class TokenInterceptor extends Interceptor {
  const TokenInterceptor({required this.pref, required this.instance});

  final SharedPref pref;
  final Dio instance;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await pref.readToken();
    final header = <String, String>{'Authorization': 'Bearer $token'};
    if (token.isNotEmpty) {
      options.headers.addEntries(header.entries);
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode! == 401) {
      try {
        final token = await pref.readRefreshToken();

        if (token.isNotEmpty) {
          instance.options.headers['X-API-KEY'] =
              err.requestOptions.headers['X-API-KEY'];

          final resp = await instance.post(
            '/account-auth/refresh-token',
            data: {
              'refresh_token': token,
            },
          );

          final data = resp.data;

          await handelData(data, pref);

          final accessToken = data['access_token'];

          err.requestOptions.headers['Authorization'] = 'Bearer $accessToken';

          final opts = Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers,
          );

          instance.options.baseUrl = err.requestOptions.baseUrl;

          final cloneResponse = await instance.request(
            err.requestOptions.path,
            options: opts,
            data: err.requestOptions.data,
            queryParameters: err.requestOptions.queryParameters,
          );

          return handler.resolve(cloneResponse);
        }
      } catch (e) {
        e as DioError;
        if (e.response?.statusCode == 401) {
          await pref.deleteRefreshToken();
          await pref.deleteToken();
        }
      }
    }
    super.onError(err, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    await handelData(response.data, pref);
    super.onResponse(response, handler);
  }
}

Future<void> handelData(dynamic data, SharedPref pref) async {
  if (data is Map<String, dynamic>) {
    final accessToken = data['access_token'];
    if (accessToken is String && accessToken.isNotEmpty) {
      await pref.saveToken(accessToken);
    }

    final refreshToken = data['refresh_token'];
    if (refreshToken is String && refreshToken.isNotEmpty) {
      await pref.saveRefreshToken(refreshToken);
    }
  }
}
