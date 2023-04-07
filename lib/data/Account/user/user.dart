import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(includeIfNull: false)
class User extends Equatable {
  final String? email;
  final String? phone;
  final String? provider;
  final List<String>? roles;
  final bool? isActive;
  final dynamic lastLogin;
  final String? application;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? id;

  const User({
    this.email,
    this.phone,
    this.provider,
    this.roles,
    this.isActive,
    this.lastLogin,
    this.application,
    this.createdAt,
    this.updatedAt,
    this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? email,
    String? phone,
    String? provider,
    List<String>? roles,
    bool? isActive,
    dynamic lastLogin,
    String? application,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
  }) {
    return User(
      email: email ?? this.email,
      phone: phone ?? this.phone,
      provider: provider ?? this.provider,
      roles: roles ?? this.roles,
      isActive: isActive ?? this.isActive,
      lastLogin: lastLogin ?? this.lastLogin,
      application: application ?? this.application,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      id: id ?? this.id,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      email,
      phone,
      provider,
      roles,
      isActive,
      lastLogin,
      application,
      createdAt,
      updatedAt,
      id,
    ];
  }
}
