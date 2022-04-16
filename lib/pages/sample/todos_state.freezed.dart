// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodosStateTearOff {
  const _$TodosStateTearOff();

  TodosStateData call({List<Todo> todos = const <Todo>[]}) {
    return TodosStateData(
      todos: todos,
    );
  }

  TodosStateLoading loading() {
    return const TodosStateLoading();
  }
}

/// @nodoc
const $TodosState = _$TodosStateTearOff();

/// @nodoc
mixin _$TodosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todos) $default, {
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todos)? $default, {
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todos)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodosStateData value) $default, {
    required TResult Function(TodosStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodosStateData value)? $default, {
    TResult Function(TodosStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodosStateData value)? $default, {
    TResult Function(TodosStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res> implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  final TodosState _value;
  // ignore: unused_field
  final $Res Function(TodosState) _then;
}

/// @nodoc
abstract class $TodosStateDataCopyWith<$Res> {
  factory $TodosStateDataCopyWith(
          TodosStateData value, $Res Function(TodosStateData) then) =
      _$TodosStateDataCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$TodosStateDataCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements $TodosStateDataCopyWith<$Res> {
  _$TodosStateDataCopyWithImpl(
      TodosStateData _value, $Res Function(TodosStateData) _then)
      : super(_value, (v) => _then(v as TodosStateData));

  @override
  TodosStateData get _value => super._value as TodosStateData;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(TodosStateData(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$TodosStateData implements TodosStateData {
  const _$TodosStateData({this.todos = const <Todo>[]});

  @JsonKey()
  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodosState(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TodosStateData &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  $TodosStateDataCopyWith<TodosStateData> get copyWith =>
      _$TodosStateDataCopyWithImpl<TodosStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todos) $default, {
    required TResult Function() loading,
  }) {
    return $default(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todos)? $default, {
    TResult Function()? loading,
  }) {
    return $default?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todos)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodosStateData value) $default, {
    required TResult Function(TodosStateLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodosStateData value)? $default, {
    TResult Function(TodosStateLoading value)? loading,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodosStateData value)? $default, {
    TResult Function(TodosStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TodosStateData implements TodosState {
  const factory TodosStateData({List<Todo> todos}) = _$TodosStateData;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  $TodosStateDataCopyWith<TodosStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateLoadingCopyWith<$Res> {
  factory $TodosStateLoadingCopyWith(
          TodosStateLoading value, $Res Function(TodosStateLoading) then) =
      _$TodosStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosStateLoadingCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res>
    implements $TodosStateLoadingCopyWith<$Res> {
  _$TodosStateLoadingCopyWithImpl(
      TodosStateLoading _value, $Res Function(TodosStateLoading) _then)
      : super(_value, (v) => _then(v as TodosStateLoading));

  @override
  TodosStateLoading get _value => super._value as TodosStateLoading;
}

/// @nodoc

class _$TodosStateLoading implements TodosStateLoading {
  const _$TodosStateLoading();

  @override
  String toString() {
    return 'TodosState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TodosStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todos) $default, {
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todos)? $default, {
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todos)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodosStateData value) $default, {
    required TResult Function(TodosStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodosStateData value)? $default, {
    TResult Function(TodosStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodosStateData value)? $default, {
    TResult Function(TodosStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodosStateLoading implements TodosState {
  const factory TodosStateLoading() = _$TodosStateLoading;
}
