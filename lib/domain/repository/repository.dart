// 50. Lecture 50 - Domain Layer - Adding Repository, Request and Failure

import 'package:dartz/dartz.dart';
import 'package:minafarid_app_ar/data/network/requests.dart';
import 'package:minafarid_app_ar/data/response/responses.dart';

abstract class Repository {
  login(LoginRequest loginRequest);
}
