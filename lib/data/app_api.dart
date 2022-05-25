//  45. Lecture 45 - Data Layer - Add API Service Client (Retrofit)

import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import '../app/constants.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient{
factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient; // Error
}