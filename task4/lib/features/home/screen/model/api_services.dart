import 'dart:convert';
import 'dart:io';
import 'model.dart';

class ApiService {
  static Future<List<Product>> fetchProducts() async {
    final url = Uri.parse("https://dummyjson.com/products?limit=10");
    final client = HttpClient();

    try {
      final request = await client.getUrl(url);
      final response = await request.close();

      if (response.statusCode == 200) {
        final responseBody = await response.transform(utf8.decoder).join();
        final data = jsonDecode(responseBody);
        final List products = data['products'];
        return products.map((e) => Product.fromJson(e)).toList();
      } else {
        throw Exception("Failed to load products: ${response.statusCode}");
      }
    } finally {
      client.close();
    }
  }
}
