import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:cafe_note_mobile/controllers/cafe_controller.dart';
import 'package:cafe_note_mobile/controllers/cafes_controller.dart';
import 'package:cafe_note_mobile/controllers/create_cafe_controller.dart';
import 'package:cafe_note_mobile/states/cafe_state.dart';
import 'package:cafe_note_mobile/states/cafes_state.dart';
import 'package:cafe_note_mobile/states/create_cafe_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

void main() {
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
      ],
      child: MaterialApp(
        title: 'Cafe Note App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: RouteConfig.routes,
      ),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("cafe app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // TODO:
          // - 来店日を記録できるようにする
          // - 画像を登録できるようにする（Firebase Cloud Storage）
          // - 一覧ページにボトムナビを追加する
          // - 一覧ページをルートにする
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, RouteConfig.cafes),
              child: const Text("navigate to cafes page."),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                RouteConfig.signup,
              ),
              child: const Text('navigate to signup page.'),
            ),
          ],
        ),
      ),
    );
  }
}
