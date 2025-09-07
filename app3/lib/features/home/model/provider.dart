import 'package:app3/features/home/model/product_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;
  List<Product> get favorites => _products.where((p) => p.isFavorite).toList();
  List<Product> get cart => _products.where((p) => p.inCart).toList();

  Future<void> fetchProducts() async {
    final url = Uri.parse('https://elwekala.onrender.com/products');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      _products = data.map((json) => Product.fromJson(json)).toList();
      notifyListeners();
    }
  }

  Future<void> addToCart(String id) async {
    final product = _products.firstWhere((p) => p.id == id);
    product.inCart = !product.inCart;
    notifyListeners();

    final url = Uri.parse('https://elwekala.onrender.com/cart/add');
    await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(product.toJson()),
    );
  }

  void toggleFavorite(String id) {
    final product = _products.firstWhere((p) => p.id == id);
    product.isFavorite = !product.isFavorite;
    notifyListeners();
  }
}
