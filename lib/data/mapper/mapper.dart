// 48. Lecture 48 - Data Layer - Creating Mappers and Applying Null Safety

import 'package:minafarid_app_ar/data/response/responses.dart';

import '../../domain/models.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(this.id, name, numOfNotifications); // ERROR
  }
}
