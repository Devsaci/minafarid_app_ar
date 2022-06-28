//  Lecture 60 Data Layer Adding Dio Factory #51

import 'package:dio/dio.dart';

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, String> headers = {};
    return dio;
  }
}
