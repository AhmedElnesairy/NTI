import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cart/cupit/cart_cubit.dart';
import '../../../core/style/text_style.dart';

class CardScreen extends StatelessWidget {
  CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text('Card Screen')),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartGetState) {
            return ListView.builder(
              itemCount: state.product.length,
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
                              context.read<CartCubit>().deleteCartCubit(id: state.product[index].id);
                            },icon: Icon(Icons.delete)),

                          ],

                        ),
                      )
                  ),
                );
              },
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}