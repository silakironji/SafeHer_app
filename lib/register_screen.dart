import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _nationalIdController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Form key for validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 150, 
                height: 150,
              ),
              const Text(
                "Let's Register",
                style: TextStyle(fontSize: 24, color: Colors.pinkAccent),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Colors.white.withAlpha(100),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  // Validate email format
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@')) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Colors.white.withAlpha(100),
                  ),
                  // Add password validation if needed
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
                child: TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Colors.white.withAlpha(100),
                  ),
                  // Add phone number validation if needed
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
                child: TextFormField(
                  controller: _nationalIdController,
                  decoration: InputDecoration(
                    labelText: "National I.D No.",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Colors.white.withAlpha(100),
                  ),
                  // Add national ID validation if needed
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        // Validate the form
                        if (_formKey.currentState?.validate() ?? false) {
                          // Form is valid, proceed with registration
                          // Collect user information
                          String email = _emailController.text;
                          String password = _passwordController.text;
                          String phoneNumber = _phoneNumberController.text;
                          String nationalId = _nationalIdController.text;

                          // Create a User instance
                          User user = User(
                            email: email,
                            password: password,
                            phoneNumber: phoneNumber,
                            nationalId: nationalId,
                          );

                          try {
                            // Register user with Firebase Authentication
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .createUserWithEmailAndPassword(
                              email: user.email,
                              password: user.password,
                            );

                            // Get the UID of the registered user
                            String uid = userCredential.user?.uid ?? '';

                            // Save additional user information to Firebase Realtime Database
                            await FirebaseDatabase.instance
                                .reference()
                                .child('users')
                                .child(uid)
                                .set({
                              'email': user.email,
                              'phoneNumber': user.phoneNumber,
                              'nationalId': user.nationalId,
                            });

                            // Display success message
                            _showSuccessMessage('Registration successful');

                            // Delay navigation for 1 second
                            await Future.delayed(Duration(seconds: 1));

                            // Navigate to the home screen
                            Navigator.pushReplacementNamed(context, '/home');
                            print('registered!');
                          } catch (e) {
                            print('Error registering user: $e');
                            // Handle registration failure
                            _showErrorMessage('Registration failed');
                          }
                        }
                      },
                      child: const Text('Register'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Already registered? ",
                      style: TextStyle(fontSize: 15, color: Colors.pinkAccent),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the login screen
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showErrorMessage(String message) {
    // Display an error message to the user using SnackBar or other UI elements
    ScaffoldMessenger.of(context as BuildContext).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.red, // You can customize the color
      ),
    );
  }

  void _showSuccessMessage(String message) {
    // Display a success message to the user using SnackBar or other UI elements
    ScaffoldMessenger.of(context as BuildContext).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.green, // You can customize the color
      ),
    );
  }
}








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
