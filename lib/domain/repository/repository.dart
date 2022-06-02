// 50. Lecture 50 - Domain Layer - Adding Repository, Request and Failure

import 'package:minafarid_app_ar/data/network/requests.dart';

abstract class Repository{
  login(LoginRequest loginRequest);
}