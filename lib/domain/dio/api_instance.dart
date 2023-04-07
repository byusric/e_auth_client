import 'package:dio/dio.dart';

class ApiInstance {
  ApiInstance(this.instance);

  final Dio instance;

  Future<Map<String, dynamic>?> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      instance
          .get<Map<String, dynamic>>(
            path,
            options: Options(
              headers: headers,
            ),
            queryParameters: queryParameters,
          )
          .then(
            (res) => res.data,
          );

  Future<Map<String, dynamic>?> post<P>(
    String path, {
    required P payload,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      instance
          .post<Map<String, dynamic>>(
            path,
            options: Options(
              headers: headers,
            ),
            queryParameters: queryParameters,
            data: payload,
          )
          .then(
            (res) => res.data,
          );

  Future<Map<String, dynamic>?> put<T, P>(
    String path, {
    required P payload,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      instance
          .put<Map<String, dynamic>>(
            path,
            options: Options(
              headers: headers,
            ),
            queryParameters: queryParameters,
            data: payload,
          )
          .then(
            (res) => res.data,
          );

  Future<Map<String, dynamic>?> patch<P>(
    String path, {
    required P payload,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      instance
          .patch<Map<String, dynamic>>(
            path,
            options: Options(
              headers: headers,
            ),
            queryParameters: queryParameters,
            data: payload,
          )
          .then(
            (res) => res.data,
          );

  Future<void> delete(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async =>
      instance.delete<Map<String, dynamic>>(
        path,
        options: Options(
          headers: headers,
        ),
        queryParameters: queryParameters,
      );
}
