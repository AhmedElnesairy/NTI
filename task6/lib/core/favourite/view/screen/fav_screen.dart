import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../style/text_style.dart';
import '../../cupit/fav_cubit.dart';


class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
        centerTitle: true,
      ),
      body: BlocConsumer <FavCubit, FavState>(builder: (context, state) {
        if(state is FavGetSuccessState){
          return ListView.builder(itemCount: state.product.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: Card(
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(state.product[index].name ,style: text,),
                          SizedBox(height: 20,),
                          Image.network(state.product[index].image),
                          SizedBox(height: 20,),
                          Text(state.product[index].price.toString() ,style: text.copyWith(fontWeight: FontWeight.w500 ,fontSize: 15),),
                          IconButton(onPressed: (){
                            context.read<FavCubit>().deleteFavoriteCubit(id: state.product[index].id);
                          }, icon: Icon(Icons.delete)),

                        ],

                      ),
                    )
                ),
              );

            },);
        }
        return const Center(child: CircularProgressIndicator(),);

      }, listener: (context, state) {

      },),
    );
  }
}
