import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:share/share.dart';
import 'package:permission_handler/permission_handler.dart';

class BottomSheetWidget extends StatelessWidget {
  final LatLng currentLocation;

  const BottomSheetWidget({required this.currentLocation});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Sly Has Just shared her current location...',
            style: TextStyle(color: Colors.pink, fontSize: 18),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildClickableAvatar('assets/images/cute.jpg', context),
              _buildClickableAvatar('assets/images/cute.jpg', context),
              _buildClickableAvatar('assets/images/cute.jpg', context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildClickableAvatar(String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        String locationString =
            'Latitude: ${currentLocation.latitude}, Longitude: ${currentLocation.longitude}';
        Share.share(locationString);
        print('Avatar tapped');
      },
      child: _buildAvatar(imagePath),
    );
  }

  Widget _buildAvatar(String imagePath) {
    return CircleAvatar(
      backgroundImage: AssetImage(imagePath),
      radius: 30,
    );
  }
}

class SheSafeHomePage extends StatefulWidget {
  const SheSafeHomePage({super.key});

  @override
  _SheSafeHomePageState createState() => _SheSafeHomePageState();
}

class _SheSafeHomePageState extends State<SheSafeHomePage> {
  GoogleMapController? _mapController;
  LatLng _currentLocation = LatLng(0, 0);

  @override
  void initState() {
    super.initState();
    _requestLocationPermission(); // Call this to request location permission
  }

  Future<void> _requestLocationPermission() async {
    var status = await Permission.location.request();
    if (status == PermissionStatus.granted) {
      _getCurrentLocation();
    } else {
      print("Location permission denied");
    }
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

  void _shareCurrentLocation() {
    String locationString =
        'Latitude: ${_currentLocation.latitude}, Longitude: ${_currentLocation.longitude}';
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => BottomSheetWidget(
                  currentLocation: LatLng(
                      _currentLocation.latitude, _currentLocation.longitude),
                ),
              );
            },
            backgroundColor: Colors.pink,
            child: Icon(Icons.share, color: Colors.white),
          ),
          FloatingActionButton(
            onPressed: () {
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
        items: const [
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
        currentIndex: 2,
        onTap: (index) {
          if (index == 3) {
            Navigator.of(context).pushNamed("/notifications");
          } else if (index == 4) {
            Navigator.of(context).pushNamed("/account");
          } else if (index == 1) {
            Navigator.of(context).pushNamed("/sos");
          } else if (index == 0) {
            Navigator.of(context).pushNamed("/createcircle");
          }
        },
      ),
    );
  }
}
