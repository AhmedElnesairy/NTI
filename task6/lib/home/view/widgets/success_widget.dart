import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cart/cupit/cart_cubit.dart';
import '../../../core/favourite/cupit/fav_cubit.dart';
import '../../../core/style/text_style.dart';
import '../../model/lap_model.dart';


class SuccessWidget extends StatelessWidget {
  const SuccessWidget({super.key, required this.list});

  final List<LapModel> list;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavCubit(),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Card(
                elevation: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(list[index].name , style: text,),
                          Spacer(),
                          Text(list[index].status ,style: text.copyWith(color: Colors.green)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Image.network(list[index].image),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(list[index].description ,style: text.copyWith(fontWeight: FontWeight.w500 ,fontSize: 15),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text("\$ ${list[index].price.toString()}",style: text.copyWith(color: Colors.green,fontSize: 20),),
                          SizedBox(width: 10,),
                          ElevatedButton(onPressed: (){
                            BlocProvider.of<CartCubit>(context).addCartCubit(id: list[index].id);
                          },
                            child: Row(
                              children: [
                                Icon(Icons.add_shopping_cart,size: 20,color: Colors.green,),
                                SizedBox(width: 10,),
                                Text("add cart" ,style: text.copyWith(color: Colors.green),)
                              ],
                            ),
                          ),

                          IconButton(onPressed: (){
                            context.read<FavCubit>().addFavoriteCubit(id: list[index].id);
                          }, icon: Icon(Icons.favorite ,color: Colors.red,)),

                        ],
                      ),
                    )

                  ],
                )),
          );
        },
      ),
    );
  }
}
