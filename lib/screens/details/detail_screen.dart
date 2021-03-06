import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/models/Product.dart';
import 'package:flutter_shopping_app/screens/details/components/detail_body.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";

  // final Product product;
  // const DetailScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments;
    print("DetailScreen 0n -> data product is = ${product.title}");
    return Scaffold(
      body: DetailBody(),
    );
  }
}
