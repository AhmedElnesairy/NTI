import 'package:dio/dio.dart';

import '../../../home/model/lap_model.dart';
class CartData {
  final Dio dio = Dio();

  addCart({required String id}) async {
    var repo = await dio.post(
      "https://elwekala.onrender.com/cart/add",

      data: {"nationalId": "01210567022258", "productId": id, "quantity": 1},
    );
    print(repo.data);
  }
  deleteCaet({required String id}) async {
    var response = await dio.delete(
      "https://elwekala.onrender.com/cart/delete",

      data: {"nationalId": "01210567022258", "productId": id},
    );

    print(response.data);
  }
  getCart() async {
    var repo = await dio.get(

      "https://elwekala.onrender.com/cart/allProducts",

      data: {"nationalId": "01210567022258", },
    );

    print(repo.data);

    List data = repo.data["products"];
    List <LapModel> list = data.map((e) => LapModel.fromJson(e)).toList();
    print(list[0].image);
    return list;
  }



}
