// lib/utils/validators.dart
class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !value.contains('@')) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    //password validation logic needed?
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    // umber validation logic
    return null;
  }

  static String? validateNationalId(String? value) {
    // national ID validation logic
    return null;
  }
}
