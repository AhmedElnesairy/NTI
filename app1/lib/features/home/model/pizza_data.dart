import 'package:app1/features/home/model/pizza_model.dart';
import 'package:dio/dio.dart';

class PizzaData {
  final Dio dio = Dio();
  getDataPizza()async{
    var response = await dio.get("https://dummyjson.com/recipes");
    List data = response.data["recipes"];
    List <PizzaModel> list =data.map((e) => PizzaModel.fromJson (e)).toList();
    return list ;
  }
}

