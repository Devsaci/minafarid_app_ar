//  51. Lecture 51 - Data Layer - Remote Data Source

import 'package:minafarid_app_ar/data/network/requests.dart';

abstract class RemoteDataSource {
  login(LoginRequest loginRequest);
}