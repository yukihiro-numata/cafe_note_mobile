import 'package:cafe_note_mobile/pages/sample/filtered_todos_state.dart';
import 'package:cafe_note_mobile/pages/sample/todo.dart';
import 'package:cafe_note_mobile/pages/sample/todos_state.dart';
import 'package:state_notifier/state_notifier.dart';

class FilteredTodosController extends StateNotifier<FilteredTodosState>
    with LocatorMixin {
  FilteredTodosController() : super(const FilteredTodosState());

  @override
  void update(Locator watch) {
    super.update(watch);

    // TodosStateを監視、stateがTodosStateDataなら更新されたtodosが渡されてくる、その他のstateは無視する
    watch<TodosState>().maybeWhen(
      (todos) => state = state.copyWith(
        completed: state.completed,
        todos: _filteredTodos(todos, completed: state.completed),
      ),
      orElse: () => null,
    );
  }

  void toggle() {
    final completed = !state.completed;
    read<TodosState>().maybeWhen(
      (todos) => state = state.copyWith(
        completed: completed,
        todos: _filteredTodos(todos, completed: completed),
      ),
      orElse: () => null,
    );
  }

  List<Todo> _filteredTodos(List<Todo> todos, {required bool completed}) {
    return todos
        .where((todo) => completed ? todo.completed : !todo.completed)
        .toList();
  }
}
