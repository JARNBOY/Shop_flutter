import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildIconButton(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (numberOfItem > 1) {
                  numberOfItem--;
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Container(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              //if our item less than 10 it throw 01 02 like that
              numberOfItem.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        buildIconButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numberOfItem++;
              });
            })
      ],
    );
  }

  SizedBox buildIconButton({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: IconButton(
        alignment: Alignment.center,
        onPressed: press,
        icon: Icon(icon),
      ),
    );
  }
}
