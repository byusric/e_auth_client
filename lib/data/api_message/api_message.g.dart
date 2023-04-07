// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiMessage _$ApiMessageFromJson(Map<String, dynamic> json) => ApiMessage(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ApiMessageToJson(ApiMessage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
