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
              const Padding(
                padding:  EdgeInsets.only(left: 50),
                child: Row(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                
                  children: [
                 Expanded (flex:1, child:Text('Edit Profile', style: TextStyle(fontSize: 18, color: Colors.pinkAccent,
                 ),
                 )),
                 Spacer(),
                 Expanded(flex: 1, child:Text('Done', style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
                 )),
                  
                            ]),
              ),  
         
         Padding(
           padding: const EdgeInsets.all(24.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const Icon(Icons.person, size: 100, color: Colors.pinkAccent,),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: TextField(
                      decoration: InputDecoration(
                            labelText: "Full_Name",
                            constraints: BoxConstraints(maxWidth: 300),
                            filled: true,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pinkAccent),
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          fillColor: Colors.white.withAlpha(100),
                        ),
                    ),
              ),),
           
            ],
           ),
         ),

         Row(
          children: [
                Padding(
                  padding: const EdgeInsets.only(left: 125),
                  child: TextField(
                          decoration: InputDecoration(
                                labelText: "Email",
                                constraints: BoxConstraints(maxWidth: 220.0),
                                filled: true,
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.pinkAccent),
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                              ),
                              fillColor: Colors.white.withAlpha(100),
                            ),
                        ),
                ),
         ],),          
          
      
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: TextField(
            textAlign: TextAlign.center,
            enabled: _isChecked, // Only enable TextField if checkbox is checked
            decoration: const InputDecoration(
              hintText: 'Enter Phone Number',
              
            ),
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
      ),

      Column(
      crossAxisAlignment: CrossAxisAlignment.end,
        children: [
           Padding(
             padding: const EdgeInsets.only(top: 100),
             child: TextButton(
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
           ),
        ],
      )

      ]),
    ),
    ));
  }
}