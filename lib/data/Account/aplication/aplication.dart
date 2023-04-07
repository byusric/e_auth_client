import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'client.dart';

part 'aplication.g.dart';

@JsonSerializable(includeIfNull: false)
class Aplication extends Equatable {
  final List<dynamic>? accountActivationMethod;
  final String? name;
  final String? authType;
  final List<String>? authFields;
  final List<String>? passwordRecoveryMethod;
  final bool? isActive;
  final bool? allowRegister;
  final Client? client;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @JsonKey(name: 'g_client_id')
  final String? gClientId;
  @JsonKey(name: 'g_client_secret')
  final String? gClientSecret;
  final List<String>? authSocial;
  @JsonKey(name: 'f_app_id')
  final String? fAppId;
  @JsonKey(name: 'f_app_secret')
  final String? fAppSecret;
  final String? id;

  const Aplication({
    this.accountActivationMethod,
    this.name,
    this.authType,
    this.authFields,
    this.passwordRecoveryMethod,
    this.isActive,
    this.allowRegister,
    this.client,
    this.createdAt,
    this.updatedAt,
    this.gClientId,
    this.gClientSecret,
    this.authSocial,
    this.fAppId,
    this.fAppSecret,
    this.id,
  });

  factory Aplication.fromJson(Map<String, dynamic> json) {
    return _$AplicationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AplicationToJson(this);

  Aplication copyWith({
    List<dynamic>? accountActivationMethod,
    String? name,
    String? authType,
    List<String>? authFields,
    List<String>? passwordRecoveryMethod,
    bool? isActive,
    bool? allowRegister,
    Client? client,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? gClientId,
    String? gClientSecret,
    List<String>? authSocial,
    String? fAppId,
    String? fAppSecret,
    String? id,
  }) {
    return Aplication(
      accountActivationMethod:
          accountActivationMethod ?? this.accountActivationMethod,
      name: name ?? this.name,
      authType: authType ?? this.authType,
      authFields: authFields ?? this.authFields,
      passwordRecoveryMethod:
          passwordRecoveryMethod ?? this.passwordRecoveryMethod,
      isActive: isActive ?? this.isActive,
      allowRegister: allowRegister ?? this.allowRegister,
      client: client ?? this.client,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      gClientId: gClientId ?? this.gClientId,
      gClientSecret: gClientSecret ?? this.gClientSecret,
      authSocial: authSocial ?? this.authSocial,
      fAppId: fAppId ?? this.fAppId,
      fAppSecret: fAppSecret ?? this.fAppSecret,
      id: id ?? this.id,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      accountActivationMethod,
      name,
      authType,
      authFields,
      passwordRecoveryMethod,
      isActive,
      allowRegister,
      client,
      createdAt,
      updatedAt,
      gClientId,
      gClientSecret,
      authSocial,
      fAppId,
      fAppSecret,
      id,
    ];
  }
}
