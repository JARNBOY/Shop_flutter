import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constants.dart';
import 'package:flutter_shopping_app/models/Product.dart';
import 'package:flutter_shopping_app/screens/details/detail_screen.dart';

import 'categorie.dart';
import 'item_card.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: kDefaultPaddin,
                  mainAxisSpacing: kDefaultPaddin),
              itemBuilder: (context, index) => ItemCart(
                    product: products[index],
                    press: () => Navigator.pushNamed(
                        context, DetailScreen.routeName,
                        arguments:
                            ProductDetailArguments(product: products[index])),
                  )),
        ))
      ],
    );
  }
}
