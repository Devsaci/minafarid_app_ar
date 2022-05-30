//  45. Lecture 45 - Data Layer - Add API Service Client (Retrofit)

import 'package:minafarid_app_ar/data/response/responses.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import '../../app/constants.dart';
import '../response/responses.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customers/login")
  Future<AuthenticationResponse> login(
    @Field("email") String email,
    @Field("password") String password,
  );
  // ( Future<AuthenticationResponse>) flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output
}

// D:\MinaFarid_App\minafarid_app_ar>flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output
// Running "flutter pub get" in minafarid_app_ar...                    8,0s
// [INFO] Generating build script...
// [INFO] Generating build script completed, took 1.4s
//
// [INFO] Initializing inputs
// [INFO] Reading cached asset graph...
// [INFO] Reading cached asset graph completed, took 156ms
//
// [INFO] Checking for updates since last build...
// [INFO] Checking for updates since last build completed, took 2.6s
//
// [INFO] Running build...
// [INFO] 1.1s elapsed, 0/3 actions completed.
// [INFO] 2.2s elapsed, 1/3 actions completed.
// [WARNING] json_serializable:json_serializable on lib/data/responses.dart:
// You are missing a required dependency on json_annotation in the "dependencies" section of your pubspec with a lower bound of at least "4.5.0".
// [INFO] 3.6s elapsed, 1/3 actions completed.
// [WARNING] source_gen:combining_builder on lib/data/app_api.dart:
// app_api.g.dart must be included as a part directive in the input library with:
// part 'app_api.g.dart';
// [INFO] Running build completed, took 4.4s
//
// [INFO] Caching finalized dependency graph...
// [INFO] Caching finalized dependency graph completed, took 54ms
//
// [INFO] Succeeded after 4.5s with 3 outputs (10 actions)

//part 'app_api.g.dart';
// D:\MinaFarid_App\minafarid_app_ar>flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output
// Running "flutter pub get" in minafarid_app_ar...                    8,0s
// [INFO] Generating build script...
// [INFO] Generating build script completed, took 1.4s
//
// [INFO] Initializing inputs
// [INFO] Reading cached asset graph...
// [INFO] Reading cached asset graph completed, took 156ms
//
// [INFO] Checking for updates since last build...
// [INFO] Checking for updates since last build completed, took 2.6s
//
// [INFO] Running build...
// [INFO] 1.1s elapsed, 0/3 actions completed.
// [INFO] 2.2s elapsed, 1/3 actions completed.
// [WARNING] json_serializable:json_serializable on lib/data/responses.dart:
// You are missing a required dependency on json_annotation in the "dependencies" section of your pubspec with a lower bound of at least "4.5.0".
// [INFO] 3.6s elapsed, 1/3 actions completed.
// [WARNING] source_gen:combining_builder on lib/data/app_api.dart:
// app_api.g.dart must be included as a part directive in the input library with:
// part 'app_api.g.dart';
// [INFO] Running build completed, took 4.4s
//
// [INFO] Caching finalized dependency graph...
// [INFO] Caching finalized dependency graph completed, took 54ms
//
// [INFO] Succeeded after 4.5s with 3 outputs (10 actions)
//
//
// D:\MinaFarid_App\minafarid_app_ar>flutter pub run build_runner build --delete-conflicting-outputs ing-output
// [INFO] Generating build script...
// [INFO] Generating build script completed, took 773ms
//
// [INFO] Initializing inputs
// [INFO] Reading cached asset graph...
// [INFO] Reading cached asset graph completed, took 153ms
//
// [INFO] Checking for updates since last build...
// [INFO] Checking for updates since last build completed, took 1.1s
//
// [INFO] Running build...
// [INFO] 1.6s elapsed, 0/1 actions completed.
// [INFO] 3.0s elapsed, 0/1 actions completed.
// [INFO] Running build completed, took 3.6s
//
// [INFO] Caching finalized dependency graph...
// [INFO] Caching finalized dependency graph completed, took 54ms
//
// [INFO] Succeeded after 3.7s with 2 outputs (3 actions)



// ( Future<AuthenticationResponse>)
// D:\MinaFarid_App\minafarid_app_ar>flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs ing-output
// Running "flutter pub get" in minafarid_app_ar...                 2 970ms
// [INFO] Generating build script...
// [INFO] Generating build script completed, took 828ms
//
// [INFO] Initializing inputs
// [INFO] Reading cached asset graph...
// [INFO] Reading cached asset graph completed, took 122ms
//
// [INFO] Checking for updates since last build...
// [INFO] Checking for updates since last build completed, took 1.4s
//
// [INFO] Running build...
// [INFO] 1.1s elapsed, 0/1 actions completed.
// [INFO] 3.3s elapsed, 0/1 actions completed.
// [INFO] 4.4s elapsed, 2/3 actions completed.
// [INFO] Running build completed, took 4.5s
//
// [INFO] Caching finalized dependency graph...
// [INFO] Caching finalized dependency graph completed, took 115ms
//
// [INFO] Succeeded after 4.6s with 2 outputs (4 actions)
