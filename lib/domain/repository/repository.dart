// 50. Lecture 50 - Domain Layer - Adding Repository, Request and Failure

import 'package:dartz/dartz.dart';
import 'package:minafarid_app_ar/data/network/failure.dart';
import 'package:minafarid_app_ar/data/network/requests.dart';
import 'package:minafarid_app_ar/domain/model/models.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
}
