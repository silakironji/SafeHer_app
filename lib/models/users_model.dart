// lib/models/users_model.dart
class User {
  final String email;
  final String password;
  final String phoneNumber;
  final String nationalId;

  const User({
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.nationalId,
  });
}
