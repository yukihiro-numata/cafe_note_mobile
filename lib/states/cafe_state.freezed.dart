// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cafe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CafeStateTearOff {
  const _$CafeStateTearOff();

  CafeStateData call({bool completed = false, Cafe? cafe = null}) {
    return CafeStateData(
      completed: completed,
      cafe: cafe,
    );
  }
}

/// @nodoc
const $CafeState = _$CafeStateTearOff();

/// @nodoc
mixin _$CafeState {
  bool get completed => throw _privateConstructorUsedError;
  Cafe? get cafe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CafeStateCopyWith<CafeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeStateCopyWith<$Res> {
  factory $CafeStateCopyWith(CafeState value, $Res Function(CafeState) then) =
      _$CafeStateCopyWithImpl<$Res>;
  $Res call({bool completed, Cafe? cafe});

  $CafeCopyWith<$Res>? get cafe;
}

/// @nodoc
class _$CafeStateCopyWithImpl<$Res> implements $CafeStateCopyWith<$Res> {
  _$CafeStateCopyWithImpl(this._value, this._then);

  final CafeState _value;
  // ignore: unused_field
  final $Res Function(CafeState) _then;

  @override
  $Res call({
    Object? completed = freezed,
    Object? cafe = freezed,
  }) {
    return _then(_value.copyWith(
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      cafe: cafe == freezed
          ? _value.cafe
          : cafe // ignore: cast_nullable_to_non_nullable
              as Cafe?,
    ));
  }

  @override
  $CafeCopyWith<$Res>? get cafe {
    if (_value.cafe == null) {
      return null;
    }

    return $CafeCopyWith<$Res>(_value.cafe!, (value) {
      return _then(_value.copyWith(cafe: value));
    });
  }
}

/// @nodoc
abstract class $CafeStateDataCopyWith<$Res>
    implements $CafeStateCopyWith<$Res> {
  factory $CafeStateDataCopyWith(
          CafeStateData value, $Res Function(CafeStateData) then) =
      _$CafeStateDataCopyWithImpl<$Res>;
  @override
  $Res call({bool completed, Cafe? cafe});

  @override
  $CafeCopyWith<$Res>? get cafe;
}

/// @nodoc
class _$CafeStateDataCopyWithImpl<$Res> extends _$CafeStateCopyWithImpl<$Res>
    implements $CafeStateDataCopyWith<$Res> {
  _$CafeStateDataCopyWithImpl(
      CafeStateData _value, $Res Function(CafeStateData) _then)
      : super(_value, (v) => _then(v as CafeStateData));

  @override
  CafeStateData get _value => super._value as CafeStateData;

  @override
  $Res call({
    Object? completed = freezed,
    Object? cafe = freezed,
  }) {
    return _then(CafeStateData(
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      cafe: cafe == freezed
          ? _value.cafe
          : cafe // ignore: cast_nullable_to_non_nullable
              as Cafe?,
    ));
  }
}

/// @nodoc

class _$CafeStateData implements CafeStateData {
  const _$CafeStateData({this.completed = false, this.cafe = null});

  @JsonKey()
  @override
  final bool completed;
  @JsonKey()
  @override
  final Cafe? cafe;

  @override
  String toString() {
    return 'CafeState(completed: $completed, cafe: $cafe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CafeStateData &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.cafe, cafe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(cafe));

  @JsonKey(ignore: true)
  @override
  $CafeStateDataCopyWith<CafeStateData> get copyWith =>
      _$CafeStateDataCopyWithImpl<CafeStateData>(this, _$identity);
}

abstract class CafeStateData implements CafeState {
  const factory CafeStateData({bool completed, Cafe? cafe}) = _$CafeStateData;

  @override
  bool get completed;
  @override
  Cafe? get cafe;
  @override
  @JsonKey(ignore: true)
  $CafeStateDataCopyWith<CafeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
