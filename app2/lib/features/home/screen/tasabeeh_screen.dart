import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/tasabeeh_cubit.dart';
import '../cubit/tasabeeh_state.dart';

class TasbeehScreen extends StatelessWidget {
  const TasbeehScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasbeehCubit, TasbeehState>(
      builder: (context, state) {
        final cubit = context.read<TasbeehCubit>();

        return Scaffold(
          appBar: AppBar(
            title: const Text("لا إله إلا الله"),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              )
            ],
          ),
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  cubit.currentImage,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: cubit.increment,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.purple.shade100,
                      child: Text(
                        "${state.count}",
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    cubit.currentZikr,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(cubit.images.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => cubit.changeImage(index),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(cubit.images[index]),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: cubit.reset,
                        icon: const Icon(Icons.refresh),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                      const SizedBox(width: 50),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.fingerprint),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
