library exeditec_auth_client;

import 'package:dio/dio.dart';
import 'package:exeditec_auth_client/domain/dio_instance.dart';
import 'package:exeditec_auth_client/domain/shared_pref.dart';

class ExeditecAuthClient {
  static final ExeditecAuthClient _instance = ExeditecAuthClient._internal();

  factory ExeditecAuthClient(String apiKey) {
    _instance.apiKey = apiKey;
    return _instance;
  }

  ExeditecAuthClient._internal() {
    SharedPref();
    _dioInstance = createDioInstance(apiKey);
  }

  late final String apiKey;

  late final Dio _dioInstance;

  Dio get dio => _dioInstance;
}
