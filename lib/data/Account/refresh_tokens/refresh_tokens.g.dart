// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_tokens.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokens _$RefreshTokensFromJson(Map<String, dynamic> json) =>
    RefreshTokens(
      account: json['account'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      refreshToken: json['refresh_token'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$RefreshTokensToJson(RefreshTokens instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('account', instance.account);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('refresh_token', instance.refreshToken);
  writeNotNull('id', instance.id);
  return val;
}
