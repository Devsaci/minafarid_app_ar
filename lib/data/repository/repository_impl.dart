// 53. Lecture 53 - Data Layer - Adding Repository Implementer
import 'package:dartz/dartz.dart';
import 'package:minafarid_app_ar/data/mapper/mapper.dart';
import 'package:minafarid_app_ar/data/network/error_handler.dart';

import 'package:minafarid_app_ar/data/network/failure.dart';

import 'package:minafarid_app_ar/data/network/requests.dart';

import 'package:minafarid_app_ar/domain/model/models.dart';

import '../../domain/repository/repository.dart';
import '../data_source/remote_data_source.dart';
import '../network/network_info.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      // its connected to internet, its safe to call API
// Lecture 59 Data Layer Applying ErrorHandler on Repository Implementer #49
      try {
        final response = await _remoteDataSource.login(loginRequest);

        if (response.status == ApiInternalStatus.SUCCESS) {
          // success
          // return either right
          // return data
          return Right(response.toDomain());
        } else {
          // failure --return business error
          // return either left
          return Left(
              Failure(409, response.message ?? "business error message"));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      // return internet connection error
      // return either left
    }
    return Left(Failure(501, "please check your internet connection"));
  }
}
