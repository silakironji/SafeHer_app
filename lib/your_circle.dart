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
            child: Text(
              'Leave Circle',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      // Bottom navigation bar with 5 icons
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.handshake_outlined, color: Colors.pink),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.sos, color: Colors.pink),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.pink), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.pink), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.pink),
            label: '',
          ),
        ],
      ),
    ));
  }
}
