//  Lecture 60 Data Layer Adding Dio Factory #51

import 'package:dio/dio.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "langauge";const String DEFAULT_LANGUAGE = "langauge";


class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, String> headers = {};
    return dio;
  }
}
