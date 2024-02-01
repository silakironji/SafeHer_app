class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !value.contains('@')) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter a valid password';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  static String? validateNationalId(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter a valid national ID';
    }
    return null;
  }
}
