import 'package:flutter/material.dart';

class CheckedinScreen extends StatefulWidget {
  @override
  _CheckedinScreenState createState() => _CheckedinScreenState();
}

class _CheckedinScreenState extends State<CheckedinScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
  const GoogleMapWidget({super.key});

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
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Location',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
          const Text(
            'Family (2)',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Subtitle: All time tracking',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  // Handle profile icon button press
                },
              ),
              const SizedBox(width: 8),
              const Text(
                'You',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
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
