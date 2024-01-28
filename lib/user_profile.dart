import 'package:flutter/material.dart';


class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
        icon: Icon(Icons.arrow_back_outlined),
        onPressed: () => Navigator.pop(context),
      ), 
      ),
  
    
      body:Container(
        
      color: Colors.white,
      child:  Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Row(
                
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
               Expanded (flex:1, child:Text('Edit Profile', style: TextStyle(fontSize: 18, color: Colors.pinkAccent,
               ),
               )),
               Spacer(),
               Expanded(flex: 1, child:Text('Done', style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
               )),
                
            ]),  
         
        Container(
          color: Colors.white,
          child: const Icon(Icons.person, size: 80, color: Colors.pinkAccent,),
          alignment: Alignment.center,
          ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 32),
          child: Column(
              children: [
                 TextField(
                  decoration: InputDecoration(
                        labelText: "Full_Name",
                        constraints: BoxConstraints(maxWidth: 200),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      fillColor: Colors.white.withAlpha(100),
                    ),
                ),
                
              SizedBox(height: 25.0,),

              TextField(
                  decoration: InputDecoration(
                        labelText: "Email",
                        constraints: BoxConstraints(maxWidth: 200),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      fillColor: Colors.white.withAlpha(100),
                    ),
                ),
                
            ],),
        ),
      
      Row(
        children: [
    Expanded(
      child: TextField(
        textAlign: TextAlign.center,
        enabled: _isChecked, // Only enable TextField if checkbox is checked
        decoration: const InputDecoration(
          hintText: 'Enter Phone Number',
          
        ),
      ),
    ),
    Checkbox(
          
      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
      checkColor: Colors.green,
    ),
      ],),

      Column(
       mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
          TextButton(
          onPressed: () {
            // Handle button press
          },
          
          child: SizedBox(
            width: double.infinity,
            child: Text('Logout', style: TextStyle(fontSize: 25, color: Colors.pinkAccent, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
            ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white.withAlpha(100), // Set background color
            elevation: 4.0, // Set elevation for shadow
            side: BorderSide.none, // Remove the border
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Set border radius
            ),
          ),
        ),
        ],
      )

      ]
      ),
    ),
    // Bottom Nav
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
        currentIndex: 2,
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
    )
    );
  }
}