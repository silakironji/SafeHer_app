import 'package:flutter/material.dart';

class CheckedinScreen extends StatefulWidget {
  @override
  _CheckedinScreenState createState() => _CheckedinScreenState();
}

class _CheckedinScreenState extends State<CheckedinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GoogleMapWidget(),
          SizedBox(height: 8),
          SearchBarWidget(),
          SizedBox(height: 8),
          BottomSheetWidget(),
        ],
      ),
    );
  }
}

class GoogleMapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your Google Maps widget here
    // ...
    return Container(
      // Your Google Maps widget code here
      height: 200, // Set your desired height
      color: Colors.blue, // Placeholder color
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Location',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Family (2)',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Subtitle: All time tracking',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  // Handle profile icon button press
                },
              ),
              SizedBox(width: 8),
              Text(
                'You',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Location: Roysambu\nDate: 23 Jan 2024 6:03 PM',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
