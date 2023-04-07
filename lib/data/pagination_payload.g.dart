// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationPayload _$PaginationPayloadFromJson(Map<String, dynamic> json) =>
    PaginationPayload(
      page: json['page'] as int? ?? 1,
      limit: json['limit'] as int? ?? 10,
      sort: json['sort'] as int? ?? 1,
    );

Map<String, dynamic> _$PaginationPayloadToJson(PaginationPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('limit', instance.limit);
  writeNotNull('sort', instance.sort);
  return val;
}
