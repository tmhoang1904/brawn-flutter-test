import 'package:json_annotation/json_annotation.dart';

part 'response_error.g.dart';

@JsonSerializable()
class ResponseError {
  ResponseError(this.message, this.statusCode, this.errorCode);

  factory ResponseError.fromJson(Map<String, dynamic> json) =>
      _$ResponseErrorFromJson(json);

  String message;
  @JsonKey(name: 'status')
  int statusCode;
  @JsonKey(name: 'name')
  String errorCode;

  Map<String, dynamic> toJson() => _$ResponseErrorToJson(this);
}
