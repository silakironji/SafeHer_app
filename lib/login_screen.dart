import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
    appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:Container(
      color: Colors.white,
      child:  Column(
        children: [
          Image.asset("assets/images/logo.png", 
          width: 150,
          height: 150,
          ),

          const Text("Login", style: TextStyle(fontSize: 34, color: Colors.pinkAccent),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  TextField(
              decoration: InputDecoration(
                    labelText: "Email",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  fillColor: Colors.white.withAlpha(100),
                ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  TextField(
              decoration: InputDecoration(
                    labelText: "Password",
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  fillColor: Colors.white.withAlpha(100),
                ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Forgot Password?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: const Text("New Here?", style: TextStyle(
                fontSize:15, color: Color.fromARGB(255, 0, 0, 0) ),),
                onTap: () {
    Navigator.of(context).pushNamed("/register");
  },
            ),
          ),
          

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
             

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                onPressed: () {
                Navigator.of(context).pushNamed("/home");
                },
                child: Text('Login', 
                style:const TextStyle(
                fontSize: 20,
                  
                  )
                  ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                  fixedSize: const Size(150, 50),
                  
                  
                ),
                            ),
              ),
            ],
          ),

          Row(
            
            crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconButton(
              icon: Icon(FontAwesomeIcons.google),
              iconSize: 25,
              color: Colors.blue,
              onPressed: () {
                // Your Google action here
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.apple),
              iconSize: 25,
              color: Colors.black,
              onPressed: () {
                // Your Apple action here
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.facebook),
              iconSize: 25,
              color: Colors.blue,
              onPressed: () {
                // Your Facebook action here
              },
            ),
          ],)
        ],
      ),
    ),
    );
  }
}