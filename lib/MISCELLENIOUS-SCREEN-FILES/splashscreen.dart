import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' Be Seen Be Heard Be SafeHer',
              style: TextStyle(color: Colors.pink, fontSize: 24),
            ),
          SizedBox(height: 20),
            Image.asset(
              'assets/images/sp.png',
              height: 450,
              width: 450,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/register");
                // Add your action when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                
                
              ),
              child: const Text(
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
