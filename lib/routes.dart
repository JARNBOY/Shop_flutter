import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screens/details/detail_screen.dart';

import 'screens/home/home_screen.dart';

//We use  name route
//All our route will be avialable here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
};
