import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class SheSafeHomePage extends StatefulWidget {
  @override
  _SheSafeHomePageState createState() => _SheSafeHomePageState();
}

class _SheSafeHomePageState extends State<SheSafeHomePage> {
  GoogleMapController? _mapController;
  LatLng _currentLocation = LatLng(0, 0);

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        _currentLocation = LatLng(position.latitude, position.longitude);
      });
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafeHer'),
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          setState(() {
            _mapController = controller;
          });
        },
        initialCameraPosition: CameraPosition(
          target: _currentLocation,
          zoom: 14.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('currentLocation'),
            position: _currentLocation,
            infoWindow: InfoWindow(title: 'Current Location'),
          ),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement the logic for sharing live location
          // You can use the _currentLocation variable to get the current location
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.share, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
           BottomNavigationBarItem(
            icon: Image.asset('assets/images/sos.png', height: 24, width: 24),
            label: 'SOS',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        currentIndex: 2,
        onTap: (index) {
          // Handle navigation to different pages based on index
          // You can use Navigator to push new screens or change the body of this widget
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SheSafeHomePage(),
  ));
}
