import 'package:flutter/material.dart';

class SosCountScreen extends StatefulWidget {
  const SosCountScreen({Key? key}) : super(key: key);

  @override
  State<SosCountScreen> createState() => _SosCountScreenState();
}

class _SosCountScreenState extends State<SosCountScreen> {
  int countdown = 10;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        countdown--;

        if (countdown > 0) {
          startCountdown();
        } else {
          // Countdown reached 0, perform any necessary actions
          print('Countdown reached 0. Sending SOS message...');

          // TODO: Implement logic to send SOS message

          // Navigate back to the previous screen
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
           
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
                    '$countdown',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(80),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/sos");
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: Colors.pink,
              ),
              child: Text(
                'Cancel',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
