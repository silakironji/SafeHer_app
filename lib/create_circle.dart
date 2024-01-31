import 'package:flutter/material.dart';

class CreateCircleScreen extends StatelessWidget {
  const CreateCircleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create Circle',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                
                ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/create2circle");
                      },
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.pink,
                        size: 25,
                      ),
                    ),
                    const Text(
                      'Family',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/create2circle");
                      },
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.pink,
                        size: 25,
                      ),
                    ),
                    const Text(
                      'Friends',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.pink),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("/create2circle");
                },
                child: const Text(
                  'Create Circle',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                
              ),
              
            ),
 ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.pink),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("/joincircle");
                },
                child: const Text(
                  'Join Circle',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                
              ),
            // const Text(
            //   'Leave Circle',
            //   style: TextStyle(
            //     fontSize: 15,
            //     color: Colors.pink,
            //   ),
            // ),
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
          }else if (index == 2) {
            Navigator.of(context).pushNamed("/home");
            }
        },
      ),
    );
  }
}