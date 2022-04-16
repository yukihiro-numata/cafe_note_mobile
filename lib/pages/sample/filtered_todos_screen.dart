import 'package:cafe_note_mobile/pages/sample/filtered_todos.dart';
import 'package:cafe_note_mobile/pages/sample/filtered_todos_controller.dart';
import 'package:cafe_note_mobile/pages/sample/filtered_todos_state.dart';
import 'package:cafe_note_mobile/pages/sample/todos_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilteredTodosScreen extends StatelessWidget {
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Todo'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.done_all,
            color: context.select<FilteredTodosState, bool>(
                    (state) => state.completed)
                ? Colors.white
                : Colors.grey,
          ),
          onPressed: () => context.read<FilteredTodosController>().toggle(),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(child: FilteredTodos()),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                    hintText: 'タイトル',
                    filled: false,
                  ),
                ),
              ),
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  var title = _textEditingController.value.text;
                  if (title.isEmpty) {
                    title = 'No title';
                  }
                  context.read<TodosController>().add(title);
                  _textEditingController.clear();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
