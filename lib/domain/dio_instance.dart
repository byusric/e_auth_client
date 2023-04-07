import 'package:dio/dio.dart';
import 'package:exeditec_auth_client/config/constants.dart';
import 'package:exeditec_auth_client/domain/shared_pref.dart';
import 'package:exeditec_auth_client/domain/token_interceptor.dart';

Dio createDioInstance(String apiKey) {
  final dio = Dio(dioOptions);
  dio.options.headers['X-API-KEY'] = apiKey;
  dio.interceptors.add(TokenInterceptor(pref: SharedPref(), instance: dio));
  return dio;
}
