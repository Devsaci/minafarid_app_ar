//  47. Lecture 47 - Application Layer - Creating Extensions Functions

extension NonNullString on String {
  String orEmpty() {
    if (this == null{ // Error
      return "";
    } else {
      return this;
    }
  }
}
