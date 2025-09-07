
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/favourite/view/screen/fav_screen.dart';
import '../../cupit/lap_cubit.dart';
import '../widgets/loading_widget.dart';
import '../widgets/success_widget.dart';
import 'cart.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CardScreen()));
      },child: Icon(Icons.shopping_cart),),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite()));
          }, icon: Icon(Icons.favorite_border))
        ],
      ),
      body: BlocBuilder<LapCubit, LapState>(
        builder: (context, state) {
          if (state is LapSuccess) {
            return SuccessWidget(list: state.lap);
          }
          return LoadingWidget();
        },
      ),
    );
  }
}
