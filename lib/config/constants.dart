import 'package:dio/dio.dart';

const baseUrl = 'https://api.auth.dev.exeditec.com/v1';

final dioOptions = BaseOptions(
  contentType: 'application/json',
  connectTimeout: const Duration(seconds: 10),
  receiveTimeout: const Duration(seconds: 10),
  sendTimeout: const Duration(seconds: 30),
  baseUrl: baseUrl,
);
