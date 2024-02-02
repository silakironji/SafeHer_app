import 'package:flutter/material.dart';

class YourCircleScreen extends StatefulWidget {
  const YourCircleScreen({super.key});

  @override
  State<YourCircleScreen> createState() => _YourCircleScreenState();
}

class _YourCircleScreenState extends State<YourCircleScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed("/home");
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              'Your Circle',
              style: TextStyle(
                fontSize: 40,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Three lines of text on the left side
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Members',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Arwa',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Tumisang',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                    SizedBox(width: 250),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: (){
                 
              },
              child: Text(
                'Leave Circle',
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 163, 63, 63),
                ),
              ),
            ),
          ),
        ],
      ),
      // Bottom navigation bar with 5 icons
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // Assuming the first item is initially selected
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
          }else if (index == 2) {
            // Handle tap on the third item (index 2)
            Navigator.of(context).pushNamed("/home");}
        },

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
        
      ),
    ));
  }
}
