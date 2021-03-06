import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/models/Product.dart';
import 'package:flutter_shopping_app/screens/details/components/detail_body.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments arguments =
        ModalRoute.of(context).settings.arguments;
    print("arguments = prduct.title = ${arguments.product.title}");
    return Scaffold(
      body: DetailBody(),
    );
  }
}

class ProductDetailArguments {
  final Product product;

  ProductDetailArguments({@required this.product});
}
