import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pagination.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Pagination<T> extends Equatable {
  const Pagination({
    this.total,
    this.totalPages,
    this.currentPage,
    this.items,
  });

  factory Pagination.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginationFromJson<T>(json, fromJsonT);

  final int? total;
  final int? totalPages;
  final int? currentPage;
  final List<T>? items;

  Map<String, dynamic> toJson(
    Pagination<T> instance,
    Object? Function(T value) toJsonT,
  ) =>
      _$PaginationToJson(this, toJsonT);

  @override
  List<Object?> get props => [
        total,
        totalPages,
        currentPage,
        items,
      ];

  @override
  bool? get stringify => true;
}
