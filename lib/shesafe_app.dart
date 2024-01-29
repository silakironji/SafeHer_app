import 'package:flutter/material.dart';
import 'package:shesafe/account.dart';
import 'package:shesafe/checkedin_screen.dart';
import 'package:shesafe/checkin_screen.dart';
import 'package:shesafe/create2_circle.dart';
import 'package:shesafe/create_circle.dart';
import 'package:shesafe/home_screen.dart';
import 'package:shesafe/invite.dart';
import 'package:shesafe/join_circle.dart';
import 'package:shesafe/login_screen.dart';
import 'package:shesafe/notifications_screen.dart';
import 'package:shesafe/register_screen.dart';
import 'package:shesafe/sos_count.dart';
import 'package:shesafe/sos_screen.dart';
import 'package:shesafe/splashscreen.dart';
import 'package:shesafe/user_profile.dart';
import 'package:shesafe/your_circle.dart';

class SheSafeApp extends StatelessWidget {
  const SheSafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeHer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home:   SplashScreen(),
      initialRoute: "/",
      routes: <String, WidgetBuilder> {
        "/":(context) =>  SplashScreen(),
        "/register": (context) => const RegisterScreen(),
        "/login": (context) => const LoginScreen(),
        "/home":(context) => const SheSafeHomePage(),
        "/userprofile":(context) => const UserProfileScreen(),
        "/notifications":(context) =>NotificationsScreen(),
        "/sos":(context) =>SosScreen(),
        "/joincircle":(context) =>const JoinCircleScreen(),
        "/createcircle":(context) =>const CreateCircleScreen(),
        "/create2circle":(context) =>const Create2CircleScreen(),
        "/soscount":(context) => const SosCountScreen(),
        "/invitescreen":(context) =>const InviteScreen(),
        "/yourcircle":(context) =>const YourCircleScreen(),
        "/checkin":(context) =>CheckinScreen(),
        "/checkedin":(context) =>CheckedinScreen(),
        "/account":(context) =>const Account(),



        
      }
    );
    
  }
}
