import 'package:flutter/material.dart';
import 'package:shesafe/MISCELLENIOUS-SCREEN-FILES/checkedin_screen.dart';
import 'package:shesafe/screens/login_screen.dart';
import 'MISCELLENIOUS-SCREEN-FILES/account.dart';
import 'MISCELLENIOUS-SCREEN-FILES/checkin_screen.dart';
import 'MISCELLENIOUS-SCREEN-FILES/create2_circle.dart';
import 'MISCELLENIOUS-SCREEN-FILES/create_circle.dart';
import 'MISCELLENIOUS-SCREEN-FILES/invite.dart';
import 'MISCELLENIOUS-SCREEN-FILES/join_circle.dart';
import 'MISCELLENIOUS-SCREEN-FILES/notifications_screen.dart';
import 'MISCELLENIOUS-SCREEN-FILES/sos_count.dart';
import 'MISCELLENIOUS-SCREEN-FILES/sos_screen.dart';
import 'MISCELLENIOUS-SCREEN-FILES/user_profile.dart';
import 'MISCELLENIOUS-SCREEN-FILES/your_circle.dart';
import 'screens/home_screen.dart';
import 'screens/register_screen.dart';

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
        routes: <String, WidgetBuilder>{

          "/": (context) => RegisterScreen(),
          // "/": (context) => SplashScreen(),
          // "/register": (context) => const RegisterScreen(),
          "/login": (context) => const LoginScreen(),
          "/home": (context) => const SheSafeHomePage(),
          "/userprofile": (context) => const UserProfileScreen(),
          "/notifications": (context) => NotificationsScreen(),
          "/sos": (context) => SosScreen(),
          "/joincircle": (context) => const JoinCircleScreen(),
          "/createcircle": (context) => const CreateCircleScreen(),
          "/create2circle": (context) => const Create2CircleScreen(),
          "/soscount": (context) => const SosCountScreen(),
          "/invitescreen": (context) => const InviteScreen(),
          "/yourcircle": (context) => const YourCircleScreen(),
          "/checkin": (context) => CheckinScreen(),
          "/checkedin": (context) => CheckedinScreen(),
          "/account": (context) => const Account(),
        });
  }
}
