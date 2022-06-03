// 53. Lecture 53 - Data Layer - Adding Repository Implementer
import 'package:dartz/dartz.dart';
import 'package:minafarid_app_ar/data/mapper/mapper.dart';

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
  Future<Either<Failure, Authentication>> login(// Error return
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      // its connected to internet, its safe to call API
    }else{
      // return internet connection error
    }
  }
}
