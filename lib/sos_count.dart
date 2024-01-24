
import 'package:flutter/material.dart';

class SosCountScreen extends StatefulWidget {
  const SosCountScreen({super.key});

  @override
  State<SosCountScreen> createState() => _SosCountScreenState();
}

class _SosCountScreenState extends State<SosCountScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'After 10 seconds, your SOS and location will be sent to your circle',
                style: TextStyle(
                  fontSize: 20,
                    color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
                child: Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '10',
                        style: TextStyle(
                          fontSize: 24,color: Colors.white
                        ),
                      ),
                    ),
                  ),

                )
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(80),
              child: ElevatedButton(
                onPressed: () {
                  // Add your button's functionality here
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                   backgroundColor: Colors.pink,

                ),
                child: Text('Cancel',
                    style: TextStyle(
                    fontSize: 20,color: Colors.white),
                ),
              ),
            )
          ],
        ),



      )
    );
  }
}
