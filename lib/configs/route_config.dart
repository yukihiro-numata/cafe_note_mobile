import 'package:cafe_note_mobile/main.dart';
import 'package:cafe_note_mobile/pages/cafe/cafe.dart';
import 'package:cafe_note_mobile/pages/cafes/cafes.dart';
import 'package:cafe_note_mobile/pages/create_cafe/_basic_info.dart';
import 'package:cafe_note_mobile/pages/create_cafe/create_cafe.dart';
import 'package:cafe_note_mobile/pages/signup/signup.dart';
import 'package:flutter/material.dart';

class RouteConfig {
  static String home = '/';
  static String cafes = '/cafes';
  static String cafe = '/cafes/detail';
  static String createCafe = 'cafes/create';
  static String createCafeBasicInfo = 'cafes/create/basic_info';
  static String signup = '/signup';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const MyHomePage(),
    cafes: (context) => const CafesPage(),
    cafe: (context) => const CafePage(),
    createCafe: (context) => const CreateCafePage(),
    createCafeBasicInfo: (context) => const CreateCafeBasicInfo(),
    signup: (context) => const SignupPage(),
  };
}

class CafeRouteArgs {
  final int id;
  CafeRouteArgs({required this.id});
}
