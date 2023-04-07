import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable(includeIfNull: false)
class RegisterResponse extends Equatable {
  final String? email;
  final String? phone;
  final List<String>? roles;
  final String? id;

  const RegisterResponse({this.email, this.phone, this.roles, this.id});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return _$RegisterResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);

  RegisterResponse copyWith({
    String? email,
    String? phone,
    List<String>? roles,
    String? id,
  }) {
    return RegisterResponse(
      email: email ?? this.email,
      phone: phone ?? this.phone,
      roles: roles ?? this.roles,
      id: id ?? this.id,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [email, phone, roles, id];
}
