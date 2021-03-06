import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:cafe_note_mobile/controllers/cafe_controller.dart';
import 'package:cafe_note_mobile/controllers/cafe_form_controller.dart';
import 'package:cafe_note_mobile/controllers/cafes_controller.dart';
import 'package:cafe_note_mobile/states/cafe_form_state.dart';
import 'package:cafe_note_mobile/states/cafe_state.dart';
import 'package:cafe_note_mobile/states/cafes_state.dart';
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
        StateNotifierProvider<CafeFormController, CafeFormState>(
          create: (_) => CafeFormController(),
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
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, RouteConfig.cafes),
              child: const Text("navigate to cafes page."),
            ),
          ],
        ),
      ),
    );
  }
}
