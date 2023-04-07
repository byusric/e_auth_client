import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_payload.g.dart';

@JsonSerializable(includeIfNull: false)
class AuthPayload extends Equatable {
  final String? email;
  final String? phone;
  final String password;
  @JsonKey(name: 'front_url')
  final String? frontUrl;
  final String? accountActivationMethod;

  const AuthPayload({
    this.email,
    this.phone,
    required this.password,
    this.frontUrl,
    this.accountActivationMethod,
  });

  factory AuthPayload.fromJson(Map<String, dynamic> json) {
    return _$AuthPayloadFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthPayloadToJson(this);

  AuthPayload copyWith({
    String? email,
    String? phone,
    String? password,
    String? frontUrl,
    String? accountActivationMethod,
  }) {
    return AuthPayload(
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      frontUrl: frontUrl ?? this.frontUrl,
      accountActivationMethod:
          accountActivationMethod ?? this.accountActivationMethod,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      email,
      phone,
      password,
      frontUrl,
      accountActivationMethod,
    ];
  }
}
