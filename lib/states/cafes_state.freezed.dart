// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cafes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CafesStateTearOff {
  const _$CafesStateTearOff();

  CafesStateData call(
      {bool completed = false, List<Cafe> cafes = const <Cafe>[]}) {
    return CafesStateData(
      completed: completed,
      cafes: cafes,
    );
  }
}

/// @nodoc
const $CafesState = _$CafesStateTearOff();

/// @nodoc
mixin _$CafesState {
  bool get completed => throw _privateConstructorUsedError;
  List<Cafe> get cafes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CafesStateCopyWith<CafesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafesStateCopyWith<$Res> {
  factory $CafesStateCopyWith(
          CafesState value, $Res Function(CafesState) then) =
      _$CafesStateCopyWithImpl<$Res>;
  $Res call({bool completed, List<Cafe> cafes});
}

/// @nodoc
class _$CafesStateCopyWithImpl<$Res> implements $CafesStateCopyWith<$Res> {
  _$CafesStateCopyWithImpl(this._value, this._then);

  final CafesState _value;
  // ignore: unused_field
  final $Res Function(CafesState) _then;

  @override
  $Res call({
    Object? completed = freezed,
    Object? cafes = freezed,
  }) {
    return _then(_value.copyWith(
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      cafes: cafes == freezed
          ? _value.cafes
          : cafes // ignore: cast_nullable_to_non_nullable
              as List<Cafe>,
    ));
  }
}

/// @nodoc
abstract class $CafesStateDataCopyWith<$Res>
    implements $CafesStateCopyWith<$Res> {
  factory $CafesStateDataCopyWith(
          CafesStateData value, $Res Function(CafesStateData) then) =
      _$CafesStateDataCopyWithImpl<$Res>;
  @override
  $Res call({bool completed, List<Cafe> cafes});
}

/// @nodoc
class _$CafesStateDataCopyWithImpl<$Res> extends _$CafesStateCopyWithImpl<$Res>
    implements $CafesStateDataCopyWith<$Res> {
  _$CafesStateDataCopyWithImpl(
      CafesStateData _value, $Res Function(CafesStateData) _then)
      : super(_value, (v) => _then(v as CafesStateData));

  @override
  CafesStateData get _value => super._value as CafesStateData;

  @override
  $Res call({
    Object? completed = freezed,
    Object? cafes = freezed,
  }) {
    return _then(CafesStateData(
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      cafes: cafes == freezed
          ? _value.cafes
          : cafes // ignore: cast_nullable_to_non_nullable
              as List<Cafe>,
    ));
  }
}

/// @nodoc

class _$CafesStateData implements CafesStateData {
  const _$CafesStateData({this.completed = false, this.cafes = const <Cafe>[]});

  @JsonKey()
  @override
  final bool completed;
  @JsonKey()
  @override
  final List<Cafe> cafes;

  @override
  String toString() {
    return 'CafesState(completed: $completed, cafes: $cafes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CafesStateData &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.cafes, cafes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(cafes));

  @JsonKey(ignore: true)
  @override
  $CafesStateDataCopyWith<CafesStateData> get copyWith =>
      _$CafesStateDataCopyWithImpl<CafesStateData>(this, _$identity);
}

abstract class CafesStateData implements CafesState {
  const factory CafesStateData({bool completed, List<Cafe> cafes}) =
      _$CafesStateData;

  @override
  bool get completed;
  @override
  List<Cafe> get cafes;
  @override
  @JsonKey(ignore: true)
  $CafesStateDataCopyWith<CafesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
