import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> registerNewUser({
  required String email,
  required String password,
  required String phoneNumber,
  required String nationalId,
}) async {
  try {
    // Create a new user with email and password
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Store additional user information in Firestore
    await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
      'email': email,
      'phoneNumber': phoneNumber,
      'nationalId': nationalId,
    });

    print('New user registered successfully!');
    // You can also handle additional logic or UI changes after registration.
  } catch (e) {
    print('Error registering new user: $e');
    // Handle registration failure (show error message or take appropriate action)
  }
}
