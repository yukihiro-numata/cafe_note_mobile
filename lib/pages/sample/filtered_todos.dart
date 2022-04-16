import 'package:cafe_note_mobile/pages/sample/filtered_todos_state.dart';
import 'package:cafe_note_mobile/pages/sample/todo.dart';
import 'package:cafe_note_mobile/pages/sample/todos_controller.dart';
import 'package:cafe_note_mobile/pages/sample/todos_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilteredTodos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return context.watch<TodosState>().when(
      (_) {
        final todos = context
            .select<FilteredTodosState, List<Todo>>((state) => state.todos);
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: todos.length,
          itemBuilder: (_, index) => _buildCard(context, todos[index]),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildCard(BuildContext context, Todo todo) {
    return Card(
      child: ListTile(
        title: Text(todo.title),
        trailing: IconButton(
          icon: Icon(
            Icons.done,
            color: todo.completed ? Colors.green : Colors.grey,
          ),
          onPressed: () => context.read<TodosController>().toggle(todo),
        ),
      ),
    );
  }
}
