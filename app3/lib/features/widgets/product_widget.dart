import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../home/model/product_model.dart';
import '../home/model/provider.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context, listen: false);
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(product.title),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border),
              onPressed: () => provider.toggleFavorite(product.id),
              color: Colors.red,
            ),
            IconButton(
              icon: Icon(product.inCart ? Icons.shopping_cart : Icons.add_shopping_cart),
              onPressed: () => provider.addToCart(product.id),
              color: Colors.white,
            ),
          ],
        ),
      ),
      child: Container(
        color: Colors.grey[300],
        alignment: Alignment.center,
        child: Text(product.title),
      ),
    );
  }
}
