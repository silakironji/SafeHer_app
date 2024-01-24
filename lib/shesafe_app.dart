import 'package:flutter/material.dart';
import 'package:shesafe/home_screen.dart';
import 'package:shesafe/notifications_screen.dart';
import 'package:shesafe/splashscreen.dart';

class SheSafeApp extends StatelessWidget {
  const SheSafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   SplashScreen(),
    );
  }
}
