import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'View Notifications',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/checkin");
                print('Clicked on Arwa notification');
              },
              child: NotificationItem(
                title: 'Arwa',
                message: 'Arwa has added you to her Friends Circle',
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Handle click for the second notification
                print('Clicked on Tumisang notification');
              },
              child: NotificationItem(
                title: 'Tumisang',
                message: 'Tumisang is now actively sharing a location with you.',
              ),
            ),
          ],
        ),
      ),
      //Bottom Nav
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
        currentIndex: 3,
        onTap: (index) {
          if (index == 3) {
            Navigator.of(context).pushNamed("/notifications");
          } else if (index == 4) {
            Navigator.of(context).pushNamed("/userprofile");
          } else if (index == 1) {
            Navigator.of(context).pushNamed("/sos");
          } else if (index == 0) {
            Navigator.of(context).pushNamed("/createcircle");
          }else if (index == 2) {
            Navigator.of(context).pushNamed("/home");
            }
        },
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String message;

  NotificationItem({required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              
              SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            message,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

