//Lecture 69 - Adding Data Classes to Login ViewModel #60

import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_data_classes.freezed.dart';


// D:\MinaFarid_App\minafarid_app_ar>flutter
// pub get && flutter pub run build_runner
// build --delete-conflicting-outputs ing-output
@freezed
class LoginObject with _$LoginObject {
  factory LoginObject(String userName, String password) = _LoginObject;
}
