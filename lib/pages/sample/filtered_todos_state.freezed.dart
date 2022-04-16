// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filtered_todos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilteredTodosStateTearOff {
  const _$FilteredTodosStateTearOff();

  FilteredTodosStateData call(
      {bool completed = false, List<Todo> todos = const <Todo>[]}) {
    return FilteredTodosStateData(
      completed: completed,
      todos: todos,
    );
  }
}

/// @nodoc
const $FilteredTodosState = _$FilteredTodosStateTearOff();

/// @nodoc
mixin _$FilteredTodosState {
  bool get completed => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilteredTodosStateCopyWith<FilteredTodosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredTodosStateCopyWith<$Res> {
  factory $FilteredTodosStateCopyWith(
          FilteredTodosState value, $Res Function(FilteredTodosState) then) =
      _$FilteredTodosStateCopyWithImpl<$Res>;
  $Res call({bool completed, List<Todo> todos});
}

/// @nodoc
class _$FilteredTodosStateCopyWithImpl<$Res>
    implements $FilteredTodosStateCopyWith<$Res> {
  _$FilteredTodosStateCopyWithImpl(this._value, this._then);

  final FilteredTodosState _value;
  // ignore: unused_field
  final $Res Function(FilteredTodosState) _then;

  @override
  $Res call({
    Object? completed = freezed,
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class $FilteredTodosStateDataCopyWith<$Res>
    implements $FilteredTodosStateCopyWith<$Res> {
  factory $FilteredTodosStateDataCopyWith(FilteredTodosStateData value,
          $Res Function(FilteredTodosStateData) then) =
      _$FilteredTodosStateDataCopyWithImpl<$Res>;
  @override
  $Res call({bool completed, List<Todo> todos});
}

/// @nodoc
class _$FilteredTodosStateDataCopyWithImpl<$Res>
    extends _$FilteredTodosStateCopyWithImpl<$Res>
    implements $FilteredTodosStateDataCopyWith<$Res> {
  _$FilteredTodosStateDataCopyWithImpl(FilteredTodosStateData _value,
      $Res Function(FilteredTodosStateData) _then)
      : super(_value, (v) => _then(v as FilteredTodosStateData));

  @override
  FilteredTodosStateData get _value => super._value as FilteredTodosStateData;

  @override
  $Res call({
    Object? completed = freezed,
    Object? todos = freezed,
  }) {
    return _then(FilteredTodosStateData(
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$FilteredTodosStateData implements FilteredTodosStateData {
  const _$FilteredTodosStateData(
      {this.completed = false, this.todos = const <Todo>[]});

  @JsonKey()
  @override
  final bool completed;
  @JsonKey()
  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'FilteredTodosState(completed: $completed, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilteredTodosStateData &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  $FilteredTodosStateDataCopyWith<FilteredTodosStateData> get copyWith =>
      _$FilteredTodosStateDataCopyWithImpl<FilteredTodosStateData>(
          this, _$identity);
}

abstract class FilteredTodosStateData implements FilteredTodosState {
  const factory FilteredTodosStateData({bool completed, List<Todo> todos}) =
      _$FilteredTodosStateData;

  @override
  bool get completed;
  @override
  List<Todo> get todos;
  @override
  @JsonKey(ignore: true)
  $FilteredTodosStateDataCopyWith<FilteredTodosStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
