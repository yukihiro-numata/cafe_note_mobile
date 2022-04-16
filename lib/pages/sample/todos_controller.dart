import 'package:cafe_note_mobile/pages/sample/todo.dart';
import 'package:cafe_note_mobile/pages/sample/todos_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

class TodosController extends StateNotifier<TodosState> with LocatorMixin {
  TodosController() : super(const TodosState.loading());

  final _uuid = Uuid();

  @override
  void initState() async {
    super.initState();

    await Future<void>.delayed(const Duration(seconds: 1));

    state = TodosState(
      todos: [
        Todo(id: _uuid.v4(), title: '朝食を食べる'),
        Todo(id: _uuid.v4(), title: 'ラジオ体操をやる'),
        Todo(id: _uuid.v4(), title: '薬を飲む'),
      ],
    );
  }

  void add(String title) {
    final currentState = state;
    if (currentState is TodosStateData) {
      // todosのクローンに新しいTodoを追加してstateを更新
      final todos = currentState.todos.toList()
        ..add(
          Todo(id: _uuid.v4(), title: title),
        );
      state = currentState.copyWith(todos: todos);
    }
  }

  void toggle(Todo todo) {
    final currentState = state;
    if (currentState is TodosStateData) {
      // Todoを検索してcompletedをtoggleし、stateを更新
      final clone = currentState.todos
          .map((t) => t == todo ? t.copyWith(completed: !t.completed) : t)
          .toList();
      state = TodosState(todos: clone);
    }
  }
}
