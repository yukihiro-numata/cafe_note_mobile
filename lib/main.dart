import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:cafe_note_mobile/controllers/cafe_controller.dart';
import 'package:cafe_note_mobile/controllers/cafes_controller.dart';
import 'package:cafe_note_mobile/controllers/create_cafe_controller.dart';
import 'package:cafe_note_mobile/controllers/login_controller.dart';
import 'package:cafe_note_mobile/controllers/signup_controller.dart';
import 'package:cafe_note_mobile/states/cafe_state.dart';
import 'package:cafe_note_mobile/states/cafes_state.dart';
import 'package:cafe_note_mobile/states/create_cafe_state.dart';
import 'package:cafe_note_mobile/states/login_state.dart';
import 'package:cafe_note_mobile/states/signup_state.dart';
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
        StateNotifierProvider<CafesController, CafesState>(
          create: (_) => CafesController(),
        ),
        StateNotifierProvider<CafeController, CafeState>(
          create: (_) => CafeController(),
        ),
        StateNotifierProvider<CreateCafeController, CreateCafeState>(
          create: (_) => CreateCafeController(),
        ),
        StateNotifierProvider<SignupController, SignupState>(
          create: (_) => SignupController(),
        ),
        StateNotifierProvider<LoginController, LoginState>(
          create: (_) => LoginController(),
        ),
      ],
      child: MaterialApp(
        title: 'Cafe Note App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: RouteConfig.routes,
        initialRoute: RouteConfig.main,
      ),
    ),
  );
}
