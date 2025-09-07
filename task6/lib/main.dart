import 'package:flutter/cupertino.dart';
import 'core/cart/model/model.dart';
import 'core/favourite/data/data_fav.dart';
import 'home/model/lap_data.dart';
import 'my_app.dart';

void main(){


  LapData lap = LapData();
  lap.getData();
  CartData cart = CartData();
  cart.getCart();
  DataFavorite.getFavorite();
  runApp(MyApp());
}