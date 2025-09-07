import 'package:flutter/material.dart';
import 'dart:async';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fastfood, size: 80, color: Colors.white),
            SizedBox(height: 20),
            Text("Recipe App",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 10),
            Text("Loading delicious ideas...", style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}