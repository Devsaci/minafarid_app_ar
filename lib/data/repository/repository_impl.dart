// 53. Lecture 53 - Data Layer - Adding Repository Implementer
import 'package:dartz/dartz.dart';

import 'package:minafarid_app_ar/data/network/failure.dart';

import 'package:minafarid_app_ar/data/network/requests.dart';

import 'package:minafarid_app_ar/domain/model/models.dart';

import '../../domain/repository/repository.dart';
import '../data_source/remote_data_source.dart';
import '../network/network_info.dart';

class RepositoryImpl implements Repository {
  late RemoteDataSource _remoteDataSource;
  late NetworkInfo _networkInfo;


  @override
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
