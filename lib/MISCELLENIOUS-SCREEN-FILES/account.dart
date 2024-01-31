import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key, });
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: Colors.white, 
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_rounded,
              color: Colors.pink), 
          onPressed: () => Navigator.of(context).pushNamed("/home"),
        ),
        title: const Text('Account',
            style: TextStyle(color: Colors.pink)), 
        centerTitle: true,
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.person,
                    color: Colors.pink), // Set icon color to pink
                const SizedBox(width: 10),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.pink), // Set border color to pink
                      ),
                      hintText: 'User Name',
                      hintStyle: TextStyle(color: Colors.pink),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.edit,
                      color: Colors.pink), // Set icon color to pink
                  onPressed: () {
                    Navigator.of(context).pushNamed("/userprofile");
                  },
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(30),
              child: SizedBox(height: 20),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50), // Rounded corners
                  borderSide: const BorderSide(
                      color: Colors.pink), // Set border color to pink
                ),
                hintText:
                    'Set Alerts and get Alert as Circle members come and go',
                    hintStyle: const TextStyle(color: Colors.pink),
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
        currentIndex: 4,
        onTap: (index) {
          if (index == 3) {
            Navigator.of(context).pushNamed("/notifications");
          } else if (index == 4) {
            Navigator.of(context).pushNamed("/account");
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