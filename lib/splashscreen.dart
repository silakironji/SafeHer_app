import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Be',
              style: TextStyle(color: Colors.grey, fontSize: 24),
            ),
            Text(
              'heard',
              style: TextStyle(color: Colors.pink, fontSize: 24),
            ),
            Text(
              'Be',
              style: TextStyle(color: Colors.grey, fontSize: 24),
            ),
            Text(
              'seen',
              style: TextStyle(color: Colors.pink, fontSize: 24),
            ),
            Text(
              'Be',
              style: TextStyle(color: Colors.grey, fontSize: 24),
            ),
            Text(
              'safe',
              style: TextStyle(color: Colors.pink, fontSize: 24),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/sp.png', // Replace with your actual image asset
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your action when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
              ),
              child: Text(
                'Be SafeHer',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
