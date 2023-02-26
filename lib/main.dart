import 'package:cafe_note_mobile/configs/cafe_note_color.dart';
import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:cafe_note_mobile/controllers/archive_cafe_controller.dart';
import 'package:cafe_note_mobile/controllers/auth_controller.dart';
import 'package:cafe_note_mobile/controllers/bottom_menu_controller.dart';
import 'package:cafe_note_mobile/controllers/cafe_controller.dart';
import 'package:cafe_note_mobile/controllers/cafes_controller.dart';
import 'package:cafe_note_mobile/controllers/create_cafe_controller.dart';
import 'package:cafe_note_mobile/controllers/my_page_controller.dart';
import 'package:cafe_note_mobile/states/archive_cafe_state.dart';
import 'package:cafe_note_mobile/states/auth_state.dart';
import 'package:cafe_note_mobile/states/bottom_menu_state.dart';
import 'package:cafe_note_mobile/states/cafe_state.dart';
import 'package:cafe_note_mobile/states/cafes_state.dart';
import 'package:cafe_note_mobile/states/create_cafe_state.dart';
import 'package:cafe_note_mobile/states/my_page_state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        StateNotifierProvider<BottomMenuController, BottomMenuState>(
          create: (_) => BottomMenuController(),
        ),
        StateNotifierProvider<CafesController, CafesState>(
          create: (_) => CafesController(),
        ),
        StateNotifierProvider<CreateCafeController, CreateCafeState>(
          create: (_) => CreateCafeController(),
        ),
        StateNotifierProvider<MyPageController, MyPageState>(
          create: (_) => MyPageController(),
        ),
        StateNotifierProvider<AuthController, AuthState>(
          create: (_) => AuthController(),
        ),
        StateNotifierProvider<ArchiveCafeController, ArchiveCafeState>(
          create: (_) => ArchiveCafeController(),
        ),
      ],
      child: MaterialApp(
        title: 'Cafe Note App',
        theme: CafeNoteColor().theme,
        routes: RouteConfig.routes,
        initialRoute: RouteConfig.main,
      ),
    ),
  );
}
