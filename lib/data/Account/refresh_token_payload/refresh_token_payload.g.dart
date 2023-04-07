// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenPayload _$RefreshTokenPayloadFromJson(Map<String, dynamic> json) =>
    RefreshTokenPayload(
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$RefreshTokenPayloadToJson(RefreshTokenPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refresh_token', instance.refreshToken);
  return val;
}
