import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/product_widget.dart';
import '../model/provider.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<ProductProvider>(context).favorites;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: favorites.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ProductItem(favorites[i]),
    );
  }
}
