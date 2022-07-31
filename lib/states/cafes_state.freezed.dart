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
      {List<Cafe> cafes = const <Cafe>[], bool isLoading = false}) {
    return CafesStateData(
      cafes: cafes,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $CafesState = _$CafesStateTearOff();

/// @nodoc
mixin _$CafesState {
  List<Cafe> get cafes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CafesStateCopyWith<CafesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafesStateCopyWith<$Res> {
  factory $CafesStateCopyWith(
          CafesState value, $Res Function(CafesState) then) =
      _$CafesStateCopyWithImpl<$Res>;
  $Res call({List<Cafe> cafes, bool isLoading});
}

/// @nodoc
class _$CafesStateCopyWithImpl<$Res> implements $CafesStateCopyWith<$Res> {
  _$CafesStateCopyWithImpl(this._value, this._then);

  final CafesState _value;
  // ignore: unused_field
  final $Res Function(CafesState) _then;

  @override
  $Res call({
    Object? cafes = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cafes: cafes == freezed
          ? _value.cafes
          : cafes // ignore: cast_nullable_to_non_nullable
              as List<Cafe>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({List<Cafe> cafes, bool isLoading});
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
    Object? cafes = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(CafesStateData(
      cafes: cafes == freezed
          ? _value.cafes
          : cafes // ignore: cast_nullable_to_non_nullable
              as List<Cafe>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CafesStateData implements CafesStateData {
  const _$CafesStateData({this.cafes = const <Cafe>[], this.isLoading = false});

  @JsonKey()
  @override
  final List<Cafe> cafes;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CafesState(cafes: $cafes, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CafesStateData &&
            const DeepCollectionEquality().equals(other.cafes, cafes) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cafes),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  $CafesStateDataCopyWith<CafesStateData> get copyWith =>
      _$CafesStateDataCopyWithImpl<CafesStateData>(this, _$identity);
}

abstract class CafesStateData implements CafesState {
  const factory CafesStateData({List<Cafe> cafes, bool isLoading}) =
      _$CafesStateData;

  @override
  List<Cafe> get cafes;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $CafesStateDataCopyWith<CafesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
