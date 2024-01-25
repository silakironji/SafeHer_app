import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';



class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: const Column(
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
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/cute.jpg'), 
                radius: 30,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/cute.jpg'), 
                radius: 30,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/cute.jpg'), 
                radius: 30,
              ),
            ],
          ),
        ],
      ),
    );
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
         showModalBottomSheet(
            context: context,
            builder: (context) => BottomSheetWidget(),
          );
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
currentIndex: 2, // Assuming the third item is initially selected
onTap: (index) {
  if (index == 3) { // Handle tap on the fourth item (index 3)
    Navigator.of(context).pushNamed("/notifications");
  } else if (index == 4) { // Handle tap on the fifth item (index 4)
    Navigator.of(context).pushNamed("/userprofile");
  }else if (index == 1) { // Handle tap on the fifth item (index 4)
    Navigator.of(context).pushNamed("/sos");
  }else if (index == 0) { // Handle tap on the fifth item (index 4)
    Navigator.of(context).pushNamed("/yourcircle");
  }
  
},
  ),
    );
  }
}



