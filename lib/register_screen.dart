import 'package:flutter/material.dart';
import 'package:shesafe/services/authentication.dart';
import 'package:shesafe/services/login.dart';
import 'package:shesafe/services/registerNewUser.dart';
import 'package:shesafe/utils/validators.dart';

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
  final _formKey = GlobalKey<FormState>();

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
                    fillColor: Colors.white.withAlpha(100),
                    labelText: "Email",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  validator: Validators.validateEmail,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    fillColor: Colors.white.withAlpha(100),
                    labelText: "Password",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  validator: Validators.validatePassword,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
                child: TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    fillColor: Colors.white.withAlpha(100),
                    labelText: "Phone Number",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  validator: Validators.validatePhoneNumber,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
                child: TextFormField(
                  controller: _nationalIdController,
                  decoration: InputDecoration(
                    fillColor: Colors.white.withAlpha(100),
                    labelText: "National I.D No.",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  validator: Validators.validateNationalId,
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
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          registerNewUser(
                            email: _emailController.text,
                            password: _passwordController.text,
                            phoneNumber: _phoneNumberController.text,
                            nationalId: _nationalIdController.text,
                          );
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
                        if (_formKey.currentState?.validate() ?? false) {
                          authenticate();
                          logUserIn();
                        }
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
}