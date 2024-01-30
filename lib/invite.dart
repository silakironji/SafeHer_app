import 'package:flutter/material.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 300,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Invite members to the Family circle",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "SAFE-9089",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
              Container(
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.pink),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/yourcircle");
                  },
                  child: const Text(
                    'Send Code',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.front_hand_outlined,
                color: Colors.pink[300],
              ),
            ),
            IconButton(
              onPressed: () {
                
              },
              icon: Icon(
                Icons.sos_rounded,
                color: Colors.pink[300],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.pink[300],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.pink[300],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InviteScreen()),
                );
              },
              icon: Icon(
                Icons.person,
                color: Colors.pink[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}