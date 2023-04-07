// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aplication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Aplication _$AplicationFromJson(Map<String, dynamic> json) => Aplication(
      accountActivationMethod:
          json['accountActivationMethod'] as List<dynamic>?,
      name: json['name'] as String?,
      authType: json['authType'] as String?,
      authFields: (json['authFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      passwordRecoveryMethod: (json['passwordRecoveryMethod'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool?,
      allowRegister: json['allowRegister'] as bool?,
      client: json['client'] == null
          ? null
          : Client.fromJson(json['client'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      gClientId: json['g_client_id'] as String?,
      gClientSecret: json['g_client_secret'] as String?,
      authSocial: (json['authSocial'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fAppId: json['f_app_id'] as String?,
      fAppSecret: json['f_app_secret'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$AplicationToJson(Aplication instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountActivationMethod', instance.accountActivationMethod);
  writeNotNull('name', instance.name);
  writeNotNull('authType', instance.authType);
  writeNotNull('authFields', instance.authFields);
  writeNotNull('passwordRecoveryMethod', instance.passwordRecoveryMethod);
  writeNotNull('isActive', instance.isActive);
  writeNotNull('allowRegister', instance.allowRegister);
  writeNotNull('client', instance.client);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('g_client_id', instance.gClientId);
  writeNotNull('g_client_secret', instance.gClientSecret);
  writeNotNull('authSocial', instance.authSocial);
  writeNotNull('f_app_id', instance.fAppId);
  writeNotNull('f_app_secret', instance.fAppSecret);
  writeNotNull('id', instance.id);
  return val;
}
