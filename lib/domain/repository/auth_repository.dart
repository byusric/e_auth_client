import 'dart:developer';

import 'package:exeditec_auth_client/data/data.dart';
import 'package:exeditec_auth_client/domain/domain.dart';

class AuthRepository {
  AuthRepository({required this.client});

  final ApiInstance client;

  Future<RegisterResponse?> register({required AuthPayload payload}) async {
    final data = await client.post(
      '/v1/account-auth/register',
      payload: payload.toJson(),
    );
    return RegisterResponse.fromJson(data!);
  }

  Future<num> login({required AuthPayload payload}) async {
    final data = await client.post(
      '/v1/account-auth/login',
      payload: payload.toJson(),
    );
    return 200;
  }
}
