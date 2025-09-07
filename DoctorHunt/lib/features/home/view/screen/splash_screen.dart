import 'package:flutter/material.dart';

import '../../../../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navTo() async {
    await Future.delayed(
      const Duration(seconds: 5),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PageHome()), // fixed
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    navTo(); // call function
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Doctor App', style: TextStyle(fontSize: 18))),
    );
  }
}
