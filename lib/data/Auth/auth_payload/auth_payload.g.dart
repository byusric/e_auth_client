// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthPayload _$AuthPayloadFromJson(Map<String, dynamic> json) => AuthPayload(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String,
      frontUrl: json['front_url'] as String?,
      accountActivationMethod: json['accountActivationMethod'] as String?,
    );

Map<String, dynamic> _$AuthPayloadToJson(AuthPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  val['password'] = instance.password;
  writeNotNull('front_url', instance.frontUrl);
  writeNotNull('accountActivationMethod', instance.accountActivationMethod);
  return val;
}
