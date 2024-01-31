import 'package:flutter/material.dart';

class CheckinScreen extends StatefulWidget {
  @override
  _CheckinScreen createState() => _CheckinScreen();
}

class _CheckinScreen extends State<CheckinScreen> {
  // TextEditingController _locationController = TextEditingController();
  TextEditingController _customNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. Google Maps Widget
          GoogleMapWidget(),

          // 2. Back Button
          const Positioned(
            top: 40,
            left: 16,
            child: BackButton(),
          ),

          // 3. Search Bar
          Positioned(
            top: 40,
            right: 16,
            left: 80, // Adjust the left value according to your design
            child: SearchBar(),
          ),

          // 4. Non-hiding Bottom Sheet
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSheetWidget(
              title: 'Create Location',
              inputPlaceholder: 'Add custom Name',
              customNameController: _customNameController,
            ),
          ),
        ],
      ),
    );
  }
}

class GoogleMapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your Google Maps widget here
    return Container(
      // Replace with your Google Maps implementation
      color: Colors.blueGrey,
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your search bar widget here
    return Container(
      // Replace with your search bar implementation
      height: 40,
      color: Colors.grey,
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  final String title;
  final String inputPlaceholder;
  final TextEditingController customNameController;

   BottomSheetWidget({
    required this.title,
    required this.inputPlaceholder,
    required this.customNameController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: customNameController,
            decoration: InputDecoration(
              hintText: inputPlaceholder,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
          Navigator.of(context).pushNamed("/checkedin");
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
