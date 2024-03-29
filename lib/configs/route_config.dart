import 'package:cafe_note_mobile/pages/archive_cafe/archive_cafe.dart';
import 'package:cafe_note_mobile/pages/bottom_menu/bottom_menu.dart';
import 'package:cafe_note_mobile/pages/cafe/cafe.dart';
import 'package:cafe_note_mobile/pages/cafe_archives/cafe_archives.dart';
import 'package:cafe_note_mobile/pages/cafes/cafes.dart';
import 'package:cafe_note_mobile/pages/create_cafe/_basic_info.dart';
import 'package:cafe_note_mobile/pages/create_cafe/create_cafe.dart';
import 'package:flutter/material.dart';

class RouteConfig {
  static String main = '/';
  static String cafes = '/cafes';
  static String cafe = '/cafes/detail';
  static String archiveCafe = '/cafes/archive';
  static String createCafe = 'cafes/create';
  static String createCafeBasicInfo = 'cafes/create/basic_info';
  static String cafeArchives = '/cafe_archives';

  static Map<String, WidgetBuilder> routes = {
    main: (context) => const BottomMenu(),
    cafes: (context) => const CafesPage(),
    cafe: (context) => const CafePage(),
    archiveCafe: (context) => const ArchiveCafePage(),
    createCafe: (context) => const CreateCafePage(),
    createCafeBasicInfo: (context) => const CreateCafeBasicInfo(),
    cafeArchives: (context) => const CafeArchives(),
  };
}

class CafeRouteArgs {
  final int id;
  const CafeRouteArgs({required this.id});
}

class ArchiveCafeRouteArgs {
  final int cafeId;
  const ArchiveCafeRouteArgs({required this.cafeId});
}
