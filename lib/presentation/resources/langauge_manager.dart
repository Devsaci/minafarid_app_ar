// ignore_for_file: constant_identifier_names

enum LanguageType { ENGLISH, ARABIC }

const String ARABIC = "ar";
const String ENGLISH = "en";

extension LanguageTypeExtension on LanguageType {
  String? getValue() {
    switch (this) {
      case LanguageType.ENGLISH:
        // TODO: Handle this case.
        break;
      case LanguageType.ARABIC:
        // TODO: Handle this case.
        break;
    }
    return null;
  }
}
