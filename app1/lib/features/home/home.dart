
import 'package:app1/features/home/cubit/pizza_cubit.dart';
import 'package:app1/features/home/view/widgets/loading_widget.dart';
import 'package:app1/features/home/view/widgets/success_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Your Restaurant",
        style: TextStyle(color: Colors.orange),),
        centerTitle: true,

      ),
      body:

      BlocBuilder<PizzaCubit,PizzaState>(
        builder: (context,state){
          if (state is PizzaSuccess){
            return   SuccessWidget(list: state.pizza);
          }
          return LoadingWidget ();
        },
      ),
    );
  }
}
