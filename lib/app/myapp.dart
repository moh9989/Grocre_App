import 'package:flutter/material.dart';
import 'package:grocre_app/core/resourses/route_manger.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: RouteManger.route,
     initialRoute:RouteName.mainScreen,
    );
  }
}
