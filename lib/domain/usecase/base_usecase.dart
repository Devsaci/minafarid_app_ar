//Lecture 65 Domain Layer Adding Base UseCase #56

import 'package:dartz/dartz.dart';
import 'package:minafarid_app_ar/data/network/failure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>>? execute(In input);
}
