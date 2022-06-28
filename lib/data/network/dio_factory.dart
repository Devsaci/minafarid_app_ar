//  Lecture 60 Data Layer Adding Dio Factory #51

import 'package:dio/dio.dart';

const String APPLICATION_JSON = "application/json";


class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, String> headers = {};
    return dio;
  }
}
