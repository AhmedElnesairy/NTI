import 'package:app1/features/home/model/pizza_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../model/pizza_data.dart';
import '../view/widgets/loading_widget.dart';
part 'pizza_state.dart';

class PizzaCubit extends Cubit<PizzaState> {
  PizzaCubit() : super(PizzaInitial());
  PizzaData pizza = PizzaData();
  getPizzaData ()async{
    emit(PizzaLoading(),);
    emit(PizzaSuccess (pizza:  await pizza.getDataPizza()));

  }

}
