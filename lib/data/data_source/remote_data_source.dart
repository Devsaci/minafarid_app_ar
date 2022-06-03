//  51. Lecture 51 - Data Layer - Remote Data Source

import 'package:minafarid_app_ar/data/network/requests.dart';
import 'package:minafarid_app_ar/data/response/responses.dart';

abstract class RemoteDataSource {
  Future<AuthenticationResponse>  login(LoginRequest loginRequest);
}

class RemoteDataSourceImpl implements RemoteDataSource{
  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async{
    // TODO: implement login
    throw UnimplementedError();
  }
}