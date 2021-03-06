import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screens/details/components/detail_body.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailBody(),
    );
  }
}
