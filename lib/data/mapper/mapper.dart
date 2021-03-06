// 48. Lecture 48 - Data Layer - Creating Mappers and Applying Null Safety

import 'package:minafarid_app_ar/app/constants.dart';
import 'package:minafarid_app_ar/data/response/responses.dart';
import '../../domain/model/models.dart';
import 'package:minafarid_app_ar/app/extensions.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
      this?.id.orEmpty() ?? Constants.empty,
      this?.name.orEmpty() ?? Constants.empty,
      this?.numOfNotifications.orZero() ?? Constants.zero,
    );
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(
      this?.phone ?? Constants.empty,
      this?.email ?? Constants.empty,
      this?.link ?? Constants.empty,
    );
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
      this?.customer.toDomain(),
      this?.contacts.toDomain(),
    );
  }
}
