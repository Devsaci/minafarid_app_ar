//  47. Lecture 47 - Application Layer - Creating Extensions Functions

import 'package:minafarid_app_ar/app/app.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return "";
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return 0;
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
