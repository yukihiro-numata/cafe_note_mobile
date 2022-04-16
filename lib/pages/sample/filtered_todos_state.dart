import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cafe_note_mobile/pages/sample/todo.dart';

part 'filtered_todos_state.freezed.dart';

@freezed
abstract class FilteredTodosState with _$FilteredTodosState {
  const factory FilteredTodosState({
    @Default(false) bool completed,
    @Default(<Todo>[]) List<Todo> todos,
  }) = FilteredTodosStateData;
}
