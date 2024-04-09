import 'dart:async';

import 'package:flutter/material.dart';
import 'package:january_last/id_card.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void gotoHomeScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const IdCardScreen(),
        ),
      );
    });
  }

  @override
  void initState() {
    gotoHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 120,
          width: 120,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            "assets/images/instalogo.webp",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
