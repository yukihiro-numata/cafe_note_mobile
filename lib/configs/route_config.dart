import 'package:cafe_note_mobile/main.dart';
import 'package:cafe_note_mobile/pages/cafe/cafe.dart';
import 'package:cafe_note_mobile/pages/cafes/cafes.dart';
import 'package:cafe_note_mobile/pages/create_cafe/create_cafe.dart';
import 'package:flutter/material.dart';

class RouteConfig {
  static String home = '/';
  static String cafes = '/cafes';
  static String cafe = '/cafes/detail';
  static String createCafe = 'cafes/create';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const MyHomePage(),
    cafes: (context) => const CafesPage(),
    cafe: (context) => const CafePage(),
    createCafe: (context) => const CreateCafePage(),
  };
}

class CafeRouteArgs {
  final int id;
  CafeRouteArgs({required this.id});
}
