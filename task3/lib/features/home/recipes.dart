import 'package:dio/dio.dart';

class ApiService {
  Future<List<dynamic>> fetchRecipes() async {
    Dio dio = Dio();
    final response = await dio.get("https://dummyjson.com/recipes");
    return response.data["recipes"];
  }
}