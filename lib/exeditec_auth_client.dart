library e_auth_client;

import 'package:dio/dio.dart';
import 'package:e_auth_client/domain/repository/account_repository.dart';
import 'package:e_auth_client/domain/domain.dart';
import 'package:e_auth_client/domain/repository/auth_repository.dart';

class ExeditecAuthClient {
  late final ApiInstance _dioInstance;
  final String apiKey;

  ExeditecAuthClient(this.apiKey) {
    SharedPref();
    _dioInstance = ApiInstance(createDioInstance(apiKey));
  }

  Dio get dio => createDioInstance(apiKey);

  AccountRepository get account => AccountRepository(client: _dioInstance);
  AuthRepository get auth => AuthRepository(client: _dioInstance);
}
