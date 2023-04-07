import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_payload.g.dart';

@JsonSerializable(includeIfNull: false)
class RefreshTokenPayload extends Equatable {
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  const RefreshTokenPayload({this.refreshToken});

  factory RefreshTokenPayload.fromJson(Map<String, dynamic> json) {
    return _$RefreshTokenPayloadFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RefreshTokenPayloadToJson(this);

  RefreshTokenPayload copyWith({
    String? refreshToken,
  }) {
    return RefreshTokenPayload(
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [refreshToken];
}
