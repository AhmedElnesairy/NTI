import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (home: Home());
  }
}
