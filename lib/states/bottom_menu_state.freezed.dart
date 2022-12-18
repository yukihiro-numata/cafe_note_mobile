// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomMenuStateTearOff {
  const _$BottomMenuStateTearOff();

  BottomMenuStateData call({required int currentIndex}) {
    return BottomMenuStateData(
      currentIndex: currentIndex,
    );
  }
}

/// @nodoc
const $BottomMenuState = _$BottomMenuStateTearOff();

/// @nodoc
mixin _$BottomMenuState {
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomMenuStateCopyWith<BottomMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomMenuStateCopyWith<$Res> {
  factory $BottomMenuStateCopyWith(
          BottomMenuState value, $Res Function(BottomMenuState) then) =
      _$BottomMenuStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class _$BottomMenuStateCopyWithImpl<$Res>
    implements $BottomMenuStateCopyWith<$Res> {
  _$BottomMenuStateCopyWithImpl(this._value, this._then);

  final BottomMenuState _value;
  // ignore: unused_field
  final $Res Function(BottomMenuState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $BottomMenuStateDataCopyWith<$Res>
    implements $BottomMenuStateCopyWith<$Res> {
  factory $BottomMenuStateDataCopyWith(
          BottomMenuStateData value, $Res Function(BottomMenuStateData) then) =
      _$BottomMenuStateDataCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

/// @nodoc
class _$BottomMenuStateDataCopyWithImpl<$Res>
    extends _$BottomMenuStateCopyWithImpl<$Res>
    implements $BottomMenuStateDataCopyWith<$Res> {
  _$BottomMenuStateDataCopyWithImpl(
      BottomMenuStateData _value, $Res Function(BottomMenuStateData) _then)
      : super(_value, (v) => _then(v as BottomMenuStateData));

  @override
  BottomMenuStateData get _value => super._value as BottomMenuStateData;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(BottomMenuStateData(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BottomMenuStateData implements BottomMenuStateData {
  const _$BottomMenuStateData({required this.currentIndex});

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'BottomMenuState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BottomMenuStateData &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentIndex));

  @JsonKey(ignore: true)
  @override
  $BottomMenuStateDataCopyWith<BottomMenuStateData> get copyWith =>
      _$BottomMenuStateDataCopyWithImpl<BottomMenuStateData>(this, _$identity);
}

abstract class BottomMenuStateData implements BottomMenuState {
  const factory BottomMenuStateData({required int currentIndex}) =
      _$BottomMenuStateData;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  $BottomMenuStateDataCopyWith<BottomMenuStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
