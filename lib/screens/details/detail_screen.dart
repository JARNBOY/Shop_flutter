import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/models/Product.dart';
import 'package:flutter_shopping_app/screens/details/components/detail_body.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments arguments =
        ModalRoute.of(context).settings.arguments;
    print("arguments = prduct.title = ${arguments.product.title}");
    return Scaffold(
      backgroundColor: arguments.product.color,
      appBar: buildAppBar(context),
      body: DetailBody(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailArguments {
  final Product product;

  ProductDetailArguments({@required this.product});
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      SizedBox(
        width: kDefaultPaddin / 2,
      )
    ],
  );
}
