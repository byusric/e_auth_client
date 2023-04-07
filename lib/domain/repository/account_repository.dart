import 'package:e_auth_client/data/data.dart';
import 'package:e_auth_client/domain/domain.dart';

class AccountRepository {
  AccountRepository({required this.client});

  final ApiInstance client;

  Future<User?> getCurrentAccount() async {
    final data = await client.get(
      '/v1/account/current',
    );
    return User.fromJson(data!);
  }

  Future<Aplication?> getCurrentAplication() async {
    final data = await client.get(
      '/v1/account/application',
    );
    return Aplication.fromJson(data!);
  }

  Future<Pagination<RefreshTokens>?> getRefreshTokensList({
    PaginationPayload params = const PaginationPayload(),
  }) async {
    final data = await client.get(
      '/v1/account/refresh-token-list',
      queryParameters: params.toJson(),
    );
    return Pagination.fromJson(
      data!,
      (json) => RefreshTokens.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiMessage?> revokeRefreshToken(String token) async {
    final data = await client.patch<Map<String, dynamic>>(
      '/v1/account/revoke-refresh-token',
      payload: RefreshTokenPayload(refreshToken: token).toJson(),
    );
    return ApiMessage.fromJson(data!);
  }

  Future<ApiMessage?> updatePassword(
    String newPassword,
    String oldPassword,
  ) async {
    final data = await client.patch<Map<String, dynamic>>(
      '/v1/account/update-password',
      payload: {
        'newPassword': newPassword,
        'oldPassword': oldPassword,
      },
    );
    return ApiMessage.fromJson(data!);
  }
}
