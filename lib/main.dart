import 'package:cafe_note_mobile/pages/cafes/cafes.dart';
import 'package:cafe_note_mobile/pages/create_cafe/create_cafe.dart';
import 'package:cafe_note_mobile/pages/sample/filtered_todos_controller.dart';
import 'package:cafe_note_mobile/pages/sample/filtered_todos_screen.dart';
import 'package:cafe_note_mobile/pages/sample/filtered_todos_state.dart';
import 'package:cafe_note_mobile/pages/sample/provider_sample.dart';
import 'package:cafe_note_mobile/pages/sample/todos_controller.dart';
import 'package:cafe_note_mobile/pages/sample/todos_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TodosController, TodosState>(
      create: (_) => TodosController(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            StateNotifierProvider<FilteredTodosController, FilteredTodosState>(
          create: (_) => FilteredTodosController(),
          child: FilteredTodosScreen(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CafesPage(),
                ),
              ),
              child: const Text("navigate to cafes page."),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateCafePage(),
                ),
              ),
              child: const Text("navigate to create cafe page."),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookshelfScreen(),
                ),
              ),
              child: const Text("navigate to sample page."),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
