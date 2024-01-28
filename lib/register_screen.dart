import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
    appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:Container(
      color: Colors.white,
      child:  SafeArea(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png", 
            width: 100,
            height: 100,
            )
            ,
        
            const Text("Let's Register", style: TextStyle(fontSize: 28, color: Colors.pinkAccent),
            ),
        
            Padding(
              padding: const EdgeInsets.all(6.0),
              child:  TextField(
                decoration: InputDecoration(
                      labelText: "Full_Name",
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
              padding: const EdgeInsets.all(6.0),
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
              padding: const EdgeInsets.all(6.0),
              child:  TextField(
                decoration: InputDecoration(
                      labelText: "Mobile_Number",
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
              padding: const EdgeInsets.all(6.0),
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
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
        
              children: [
        
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: const Text("Already have an account?",
                   style: TextStyle(fontSize: 15, color: Colors.pinkAccent),
                   
                            ),
                ),
              GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/login");
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Login", 
            style: TextStyle(fontSize: 15, color: Colors.black)),
          ),
        ),
        
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/home");
                      },
                      child: const Text('Register', style: TextStyle(fontSize: 20, ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        foregroundColor: Colors.white,
                        fixedSize: const Size(150, 50),
                      ),
                                  ),
                    ],
                  ),
                ),
              ],
            ),
        
            Row(
              
              crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.center,
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
    ),
    );
  }
}