import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:share/share.dart';



class BottomSheetWidget extends StatelessWidget {
  final LatLng currentLocation;

  BottomSheetWidget({required this.currentLocation});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Sly Has Just shared her current location...',
            style: TextStyle(color: Colors.pink, fontSize: 18),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildAvatarButton('assets/images/cute.jpg', context),
              _buildAvatarButton('assets/images/cute.jpg', context),
              _buildAvatarButton('assets/images/cute.jpg', context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAvatarButton(String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        _shareLocation(currentLocation);
        Navigator.pop(context); // Close the bottom sheet after sharing
      },
      child: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        radius: 30,
      ),
    );
  }

  void _shareLocation(LatLng location) {
    String locationString =
        'Latitude: ${location.latitude}, Longitude: ${location.longitude}';
    Share.share(locationString);
  }
}


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

  // Function to share the current location
void _shareCurrentLocation() {
  // Format the location as a string
  String locationString =
      'Latitude: ${_currentLocation.latitude}, Longitude: ${_currentLocation.longitude}';

  // Use the share package to send the location as a text message
  Share.share(locationString);
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
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => BottomSheetWidget(currentLocation: LatLng(_currentLocation.latitude, _currentLocation.longitude),),
              );
            },
            backgroundColor: Colors.pink,
            child: Icon(Icons.share, color: Colors.white),
          ),
          FloatingActionButton(
            onPressed: () {
              // Handle action to show current location
              _mapController?.animateCamera(
                CameraUpdate.newLatLng(_currentLocation),
              );
            },
            backgroundColor: Colors.pink,
            child: Icon(Icons.my_location, color: Colors.white),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sos),
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
        currentIndex: 2, // Assuming the third item is initially selected
        onTap: (index) {
          if (index == 3) {
            // Handle tap on the fourth item (index 3)
            Navigator.of(context).pushNamed("/notifications");
          } else if (index == 4) {
            // Handle tap on the fifth item (index 4)
            Navigator.of(context).pushNamed("/userprofile");
          } else if (index == 1) {
            // Handle tap on the fifth item (index 4)
            Navigator.of(context).pushNamed("/sos");
          } else if (index == 0) {
            // Handle tap on the fifth item (index 4)
            Navigator.of(context).pushNamed("/yourcircle");
          }
        },
      ),
    );
  }
}
