//  43. Lecture 43 - Data Layer - Adding APIs Responses
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}


class CustomerResponse{
  String? id;
}