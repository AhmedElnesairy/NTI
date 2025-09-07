import 'dart:math';

import 'package:dio/dio.dart';

import 'lap_model.dart';

class LapData {
  final Dio dio = Dio();

  getData() async {
    var response = await dio.get(
      "https://elwekala.onrender.com/product/Laptops",
    );
    List data = response.data["product"];

    List<LapModel> list = data.map((e) => LapModel.fromJson(e)).toList();
    print(list[0].image);
    return list;
  }
}
