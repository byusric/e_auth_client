import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refresh_tokens.g.dart';

@JsonSerializable(includeIfNull: false)
class RefreshTokens extends Equatable {
  final String? account;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  final String? id;

  const RefreshTokens({
    this.account,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.refreshToken,
    this.id,
  });

  factory RefreshTokens.fromJson(Map<String, dynamic> json) {
    return _$RefreshTokensFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RefreshTokensToJson(this);

  RefreshTokens copyWith({
    String? account,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? refreshToken,
    String? id,
  }) {
    return RefreshTokens(
      account: account ?? this.account,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      refreshToken: refreshToken ?? this.refreshToken,
      id: id ?? this.id,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      account,
      isActive,
      createdAt,
      updatedAt,
      refreshToken,
      id,
    ];
  }
}
