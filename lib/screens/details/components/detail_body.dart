import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/models/Product.dart';

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
              children: <Widget>[],
            ),
          )
        ],
      ),
    );
  }
}
