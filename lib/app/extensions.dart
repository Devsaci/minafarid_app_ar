//  47. Lecture 47 - Application Layer - Creating Extensions Functions

import 'package:minafarid_app_ar/app/app.dart';
import 'package:minafarid_app_ar/app/constants.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return Constants.zero;
    } else {
      return this!;
    }
  }
}

// test method
void test() {
  String? data = "test";
  int? count = 12;

  print(data.orEmpty() + "*******************************************");
  print("${count.orZero()} + ******************************************");
}
