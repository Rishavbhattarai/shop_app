import 'package:first_app/providers/product.dart';
import 'package:first_app/providers/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  //final String title;
  static const routeName = '/product-detail';

  //ProductDetailScreen(this.title);
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context, listen: false)
        .items
        .firstWhere((prod) => prod.id == productId);

    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    ));
  }
}
