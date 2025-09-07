import 'package:dio/dio.dart';

import '../../../home/model/lap_model.dart';


class DataFavorite {
  static final Dio dio = Dio();

  static addFavorite({required String id}) async {
    var response = await dio.post(
      "https://elwekala.onrender.com/favorite",

      data: {"nationalId": "01210567022258", "productId": id},
    );

    print(response.data);
  }

  static deleteFavorite({required String id}) async {
    var response = await dio.delete(
      "https://elwekala.onrender.com/favorite",

      data: {"nationalId": "01210567022258", "productId": id},
    );

    print(response.data);
  }

  static getFavorite() async {
    var response = await dio.get(
      "https://elwekala.onrender.com/favorite",

      data: {"nationalId": "01210567022258"},
    );

    print(response.data);

    List data = response.data["favoriteProducts"];
    List<LapModel> list = data.map((e) => LapModel.fromJson(e)).toList();
    print(list[0].image);
    return list;
  }
}
