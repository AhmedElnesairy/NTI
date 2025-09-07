

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'core/bloc/bloc.dart';
import 'features/home/home_cubit.dart';
import 'features/model/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(CounterRepository()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen(),
      ),
    );
  }
}
