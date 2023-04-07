import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client.g.dart';

@JsonSerializable(includeIfNull: false)
class Client extends Equatable {
  final String? firstName;
  final String? lastName;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? id;
  final String? email;
  final List<String>? roles;

  const Client({
    this.firstName,
    this.lastName,
    this.createdAt,
    this.updatedAt,
    this.id,
    this.email,
    this.roles,
  });

  factory Client.fromJson(Map<String, dynamic> json) {
    return _$ClientFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ClientToJson(this);

  Client copyWith({
    String? firstName,
    String? lastName,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
    String? email,
    List<String>? roles,
  }) {
    return Client(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
      email: email ?? this.email,
      roles: roles ?? this.roles,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      firstName,
      lastName,
      createdAt,
      updatedAt,
      id,
      email,
      roles,
    ];
  }
}
