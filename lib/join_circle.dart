import 'package:flutter/material.dart';


class JoinCircleScreen extends StatefulWidget {
  const JoinCircleScreen({super.key});

  @override
  State<JoinCircleScreen> createState() => _JoinCircleScreenState();
}

class _JoinCircleScreenState extends State<JoinCircleScreen> {

  int _currentIndex = 0;

  //final TextEditingController _textController = TextEditingController(text: 'Search items');
  final List<Widget> _pages = [

  ];

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
                   type: BottomNavigationBarType.fixed,
                   showSelectedLabels: true,
                   showUnselectedLabels: true,
                   items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.front_hand_outlined, color: Colors.pinkAccent,),
               label: 'community'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sos, color: Colors.pinkAccent,),
              label: 'SOS'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.pinkAccent,),
              label: 'home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.pinkAccent,),
              label: 'notifications'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.pinkAccent,),
              label: 'profile'
            ),
                   ],
                 ),
    
        
        appBar: AppBar(
        leading: IconButton(onPressed: () {}, 
        icon: Icon(Icons.arrow_back),
        )),
        body: Center(
      child: Container(
        padding: EdgeInsets.all(10.0),   
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
       const Text("JoinCircle Circle", style: TextStyle(fontSize: 50, color: Colors.pinkAccent),
        textAlign:TextAlign.center),

        TextField(
          decoration: InputDecoration(
            labelText:"",
            constraints: const BoxConstraints(maxWidth: 300),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pinkAccent),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      fillColor: Colors.white.withAlpha(100),),
        ),

       const Text("Ask Circle creater for their code", style: TextStyle(fontSize: 18, color: Colors.pinkAccent)),

        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          
          child: SizedBox(
            width: 80,
            child: Text('Submit', 
            style: TextStyle(fontSize: 18, 
            color: Colors.white
            ),
            textAlign: TextAlign.center,
            ),
            ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pinkAccent, // Set background color
            elevation: 4.0, // Set elevation for shadow
            side: BorderSide.none, // Remove the border
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Set border radius
            ),
          ),
        ),
      ],),
    ),
        ),
        ),
    ); 
    
  }
}