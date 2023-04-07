// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  writeNotNull('roles', instance.roles);
  writeNotNull('id', instance.id);
  return val;
}
