import 'package:flutter/material.dart';
import 'package:grocre_app/feature/home_screen/home_screen.dart';
import 'package:grocre_app/feature/splace_screen/splace_screen.dart';

class RouteManger {
  static Map<String, Widget Function(BuildContext)> route = {
    RouteName.splaceScreen: (context) => SplaceScreen(),
    RouteName.homeScreen: (context) => HomeScreen(),
  };
}

class RouteName {
  static String homeScreen = "HomeScreen";
  static String splaceScreen = "SplaceScreen";
}
