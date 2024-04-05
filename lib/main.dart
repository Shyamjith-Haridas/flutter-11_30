import 'package:flutter/material.dart';
import 'package:january_last/splash_screen.dart';

void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key}); // constructor

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


 // platform ? naterialapp() : cupertinoapp()