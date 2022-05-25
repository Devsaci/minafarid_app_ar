//  43. Lecture 43 - Data Layer - Adding APIs Responses
import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numOfNotifications")
  int? numOfNotifications;

  CustomerResponse(this.id, this.name, this.numOfNotifications);
}

@JsonSerializable()
class ContactsResponse {
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "link")
  String? link;

  ContactsResponse(this.phone, this.email, this.link);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "customer")
  CustomerResponse? customer;
  @JsonKey(name: "contacts")
  ContactsResponse? contacts;

//  44. Lecture 44 - Data Layer - Json Serialization
  AuthenticationResponse(this.customer, this.contacts);

  // from json
  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);

  // to json
  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}

// >flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output

// D:\MinaFarid_App\minafarid_app_ar>flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-outout
// Running "flutter pub get" in minafarid_app_ar...                 1 948ms
// [INFO] Generating build script...
// [INFO] Generating build script completed, took 748ms
//
// [INFO] Precompiling build script......
// [INFO] Precompiling build script... completed, took 10.9s
//
// [INFO] Initializing inputs
// [INFO] Building new asset graph...
// [INFO] Building new asset graph completed, took 1.2s
//
// [INFO] Checking for unexpected pre-existing outputs....
// [INFO] Checking for unexpected pre-existing outputs. completed, took 2ms
//
// [INFO] Running build...
// [INFO] Generating SDK summary...
// [INFO] 12.5s elapsed, 0/16 actions completed.
// [INFO] Generating SDK summary completed, took 12.5s
//
// [INFO] 13.6s elapsed, 4/19 actions completed.
// [INFO] 14.7s elapsed, 7/22 actions completed.
// [INFO] 15.7s elapsed, 7/22 actions completed.
// [WARNING] json_serializable:json_serializable on lib/data/responses.dart:
// You are missing a required dependency on json_annotation in the "dependencies" section of your pubspec with a lower bound of at least "4.5.0".
// [INFO] 17.8s elapsed, 7/22 actions completed.
// [INFO] 18.8s elapsed, 8/22 actions completed.
// [INFO] 19.9s elapsed, 8/22 actions completed.
// [INFO] 21.1s elapsed, 8/22 actions completed.
// [INFO] 22.1s elapsed, 8/22 actions completed.
// [INFO] 33.1s elapsed, 8/22 actions completed.
// [INFO] 34.7s elapsed, 17/22 actions completed.
// [WARNING] source_gen:combining_builder on lib/data/responses.dart:
// responses.g.dart must be included as a part directive in the input library with:
// part 'responses.g.dart';
// [INFO] 36.2s elapsed, 67/69 actions completed.
// [INFO] Running build completed, took 37.0s
//
// [INFO] Caching finalized dependency graph...
// [INFO] Caching finalized dependency graph completed, took 88ms
//
// [INFO] Succeeded after 37.1s with 1 outputs (70 actions)
//
//
// D:\MinaFarid_App\minafarid_app_ar>>flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output
// 'pub' n’est pas reconnu en tant que commande interne
// ou externe, un programme exécutable ou un fichier de commandes.
//
// D:\MinaFarid_App\minafarid_app_ar>flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output
// Running "flutter pub get" in minafarid_app_ar...                 2 587ms
// [INFO] Generating build script...
// [INFO] Generating build script completed, took 663ms
//
// [INFO] Initializing inputs
// [INFO] Reading cached asset graph...
// [INFO] Reading cached asset graph completed, took 105ms
//
// [INFO] Checking for updates since last build...
// [INFO] Checking for updates since last build completed, took 1.1s
//
// [INFO] Running build...
// [INFO] 1.2s elapsed, 0/1 actions completed.
// [WARNING] json_serializable:json_serializable on lib/data/responses.dart:
// You are missing a required dependency on json_annotation in the "dependencies" section of your pubspec with a lower bound of at least "4.5.0".
// [WARNING] source_gen:combining_builder on lib/data/responses.dart:
// responses.g.dart must be included as a part directive in the input library with:
// part 'responses.g.dart';
// [INFO] Running build completed, took 1.7s
//
// [INFO] Caching finalized dependency graph...
// [INFO] Caching finalized dependency graph completed, took 55ms
//
// [INFO] Succeeded after 1.8s with 1 outputs (3 actions)

// part 'responses.g.dart';
// D:\MinaFarid_App\minafarid_app_ar>>flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output
// 'pub' n’est pas reconnu en tant que commande interne
// ou externe, un programme exécutable ou un fichier de commandes.
//
// D:\MinaFarid_App\minafarid_app_ar>flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output
// Running "flutter pub get" in minafarid_app_ar...                 2 587ms
// [INFO] Generating build script...
// [INFO] Generating build script completed, took 663ms
//
// [INFO] Initializing inputs
// [INFO] Reading cached asset graph...
// [INFO] Reading cached asset graph completed, took 105ms
//
// [INFO] Checking for updates since last build...
// [INFO] Checking for updates since last build completed, took 1.1s
//
// [INFO] Running build...
// [INFO] 1.2s elapsed, 0/1 actions completed.
// [WARNING] json_serializable:json_serializable on lib/data/responses.dart:
// You are missing a required dependency on json_annotation in the "dependencies" section of your pubspec with a lower bound of at least "4.5.0".
// [WARNING] source_gen:combining_builder on lib/data/responses.dart:
// responses.g.dart must be included as a part directive in the input library with:
// part 'responses.g.dart';
// [INFO] Running build completed, took 1.7s
//
// [INFO] Caching finalized dependency graph...
// [INFO] Caching finalized dependency graph completed, took 55ms
//
// [INFO] Succeeded after 1.8s with 1 outputs (3 actions)
//
//
// D:\MinaFarid_App\minafarid_app_ar>flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output
// Running "flutter pub get" in minafarid_app_ar...                 1 797ms
// [INFO] Generating build script...
// [INFO] Generating build script completed, took 651ms
//
// [INFO] Initializing inputs
// [INFO] Reading cached asset graph...
// [INFO] Reading cached asset graph completed, took 109ms
//
// [INFO] Checking for updates since last build...
// [INFO] Checking for updates since last build completed, took 1.0s
//
// [INFO] Running build...
// [INFO] 1.2s elapsed, 0/1 actions completed.
// [WARNING] json_serializable:json_serializable on lib/data/responses.dart:
// You are missing a required dependency on json_annotation in the "dependencies" section of your pubspec with a lower bound of at least "4.5.0".
// [INFO] Running build completed, took 1.7s
//
// [INFO] Caching finalized dependency graph...
// [INFO] Caching finalized dependency graph completed, took 57ms
//
// [INFO] Succeeded after 1.8s with 2 outputs (3 actions)
