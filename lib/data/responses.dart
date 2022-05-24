//  43. Lecture 43 - Data Layer - Adding APIs Responses
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BaseResponse {
  int? status;
  String? message;
}