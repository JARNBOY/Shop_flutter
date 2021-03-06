import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/models/Product.dart';
import 'package:flutter_shopping_app/screens/details/components/product_title_with_image.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //It's provide total and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
