import 'package:flutter/material.dart';

class CreateCircleScreen extends StatelessWidget {
  const CreateCircleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Circle',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
            ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.pink,
                        size: 40,
                      ),
                    ),
                    Text(
                      'Friends',
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
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle_outline,
                        color: Colors.pink,
                        size: 40,
                      ),
                    ),
                    Text(
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
            Container(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Color.fromRGBO(255, 112, 167, 1)),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Join Circle',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Text(
              'Leave Circle',
              style: TextStyle(
                fontSize: 15,
                color: Colors.pink,
              ),
            ),
          ],
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