import 'package:flutter/material.dart';

class SosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pushNamed("/home");
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Pink rounded SOS button
            GestureDetector(
              onTap: () {
                // Add logic to handle SOS button tap
              Navigator.of(context).pushNamed("/soscount");
              },
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text(
                    'TAP TO\nSEND SOS',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 26), 
                    
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            // Profile icon with a plus
            GestureDetector(
              onTap: () {
                // Add logic to handle profile icon tap
                print('Profile icon tapped');
              },
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.pink,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Text: Tap to add member to circle
            GestureDetector(
              onTap: () {
                // Add logic to handle text tap
                print('Tap to add member to circle');
              },
              child: Text(
                'Tap to add member to circle',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SosScreen(),
  ));
}
