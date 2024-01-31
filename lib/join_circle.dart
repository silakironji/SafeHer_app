import 'package:flutter/material.dart';

class JoinCircleScreen extends StatefulWidget {
  const JoinCircleScreen({super.key});

  @override
  State<JoinCircleScreen> createState() => _JoinCircleScreenState();
}

class _JoinCircleScreenState extends State<JoinCircleScreen> {

  //final TextEditingController _textController = TextEditingController(text: 'Search items');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          currentIndex: 0, // Assuming the third item is initially selected
          onTap: (index) {
            if (index == 3) {
              // Handle tap on the fourth item (index 3)
              Navigator.of(context).pushNamed("/notifications");
            } else if (index == 4) {
              // Handle tap on the fifth item (index 4)
              Navigator.of(context).pushNamed("/account");
            } else if (index == 1) {
              // Handle tap on the fifth item (index 4)
              Navigator.of(context).pushNamed("/sos");
            } else if (index == 0) {
              // Handle tap on the fifth item (index 4)
              Navigator.of(context).pushNamed("/createcircle");
            } else if (index == 2) {
              Navigator.of(context).pushNamed("/home");
            }
          },
        ),
        appBar: AppBar(
            leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/createcircle");
          },
          icon: const Icon(Icons.arrow_back),
        )),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Join Circle",
                    style: TextStyle(fontSize: 34, color: Colors.pink),
                    textAlign: TextAlign.center),
                TextField(
                  decoration: InputDecoration(
                    labelText: "",
                    constraints: const BoxConstraints(maxWidth: 300),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    fillColor: Colors.white.withAlpha(100),
                  ),
                ),
                const Text("Ask Circle creater for their code",
                    style: TextStyle(fontSize: 18, color: Colors.pinkAccent)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/yourcircle");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink, // Set background color
                    // Set elevation for shadow
                    side: BorderSide.none, // Remove the border
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(16.0), // Set border radius
                    ),
                  ),
                  child: const SizedBox(
                    width: 80,
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
