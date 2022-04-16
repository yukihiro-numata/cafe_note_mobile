import 'package:cafe_note_mobile/pages/sample/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_state.freezed.dart';

@freezed
abstract class TodosState with _$TodosState {
  const factory TodosState({
    @Default(<Todo>[]) List<Todo> todos,
  }) = TodosStateData;
  const factory TodosState.loading() = TodosStateLoading;
}
