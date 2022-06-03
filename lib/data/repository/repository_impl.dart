// 53. Lecture 53 - Data Layer - Adding Repository Implementer
import 'package:dartz/dartz.dart';

import 'package:minafarid_app_ar/data/network/failure.dart';

import 'package:minafarid_app_ar/data/network/requests.dart';

import 'package:minafarid_app_ar/domain/model/models.dart';

import '../../domain/repository/repository.dart';

class RepositoryImpl implements Repository{
  @override
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest) {
    // TODO: implement login
    throw UnimplementedError();
  }
}