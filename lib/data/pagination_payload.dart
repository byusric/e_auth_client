import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pagination_payload.g.dart';

@JsonSerializable(includeIfNull: false)
class PaginationPayload extends Equatable {
  const PaginationPayload({
    this.page = 1,
    this.limit = 10,
    this.sort = 1,
  });

  factory PaginationPayload.fromJson(Map<String, dynamic> json) {
    return _$PaginationPayloadFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaginationPayloadToJson(this);

  final int? page;
  final int? limit;
  final int? sort;

  PaginationPayload copyWith({
    int? page,
    int? limit,
    int? sort,
  }) {
    return PaginationPayload(
      page: page ?? this.page,
      limit: limit ?? this.limit,
      sort: sort ?? this.sort,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      page,
      limit,
      sort,
    ];
  }
}
