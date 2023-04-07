import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_message.g.dart';

@JsonSerializable(includeIfNull: false)
class ApiMessage extends Equatable {
  final String? message;

  const ApiMessage({this.message});

  factory ApiMessage.fromJson(Map<String, dynamic> json) {
    return _$ApiMessageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiMessageToJson(this);

  ApiMessage copyWith({
    String? message,
  }) {
    return ApiMessage(
      message: message ?? this.message,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [message];
}
