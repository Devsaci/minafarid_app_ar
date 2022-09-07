//Lecture 66 Domain Layer Adding Login UseCase #57
import 'package:dartz/dartz.dart';

import 'package:minafarid_app_ar/data/network/failure.dart';

import '../model/models.dart';
import 'base_usecase.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, Authentication> {
  @override
  Future<Either<Failure, Authentication>>? execute(LoginUseCaseInput input) {
    // TODO: implement execute
    throw UnimplementedError();
  }
}

class LoginUseCaseInput {}
