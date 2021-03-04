import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

//We use  name route
//All our route will be avialable here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen()
};
