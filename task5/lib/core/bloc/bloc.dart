

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home/home_cubit.dart';
import '../../features/home/home_state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
        Text("سبحان الله "),
        centerTitle: true
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          int value = 0;
          if (state is CounterUpdated) {
            value = state.counter.value;
          }

          return Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/images/2.jpg",
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.purple.shade100,
                    child: Text(
                      "$value",
                      style: TextStyle(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        heroTag: "reset",
                        onPressed: () {
                          context.read<CounterCubit>().reset();
                        },
                        child: const Icon(Icons.refresh),
                      ),
                      FloatingActionButton(
                        heroTag: "increment",
                        onPressed: () {
                          context.read<CounterCubit>().increment();
                        },
                        child: const Icon(Icons.fingerprint),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
