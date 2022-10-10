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

  CafeStateData call({CafeDetail? cafe = null, bool isLoading = false}) {
    return CafeStateData(
      cafe: cafe,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $CafeState = _$CafeStateTearOff();

/// @nodoc
mixin _$CafeState {
  CafeDetail? get cafe => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CafeStateCopyWith<CafeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeStateCopyWith<$Res> {
  factory $CafeStateCopyWith(CafeState value, $Res Function(CafeState) then) =
      _$CafeStateCopyWithImpl<$Res>;
  $Res call({CafeDetail? cafe, bool isLoading});

  $CafeDetailCopyWith<$Res>? get cafe;
}

/// @nodoc
class _$CafeStateCopyWithImpl<$Res> implements $CafeStateCopyWith<$Res> {
  _$CafeStateCopyWithImpl(this._value, this._then);

  final CafeState _value;
  // ignore: unused_field
  final $Res Function(CafeState) _then;

  @override
  $Res call({
    Object? cafe = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cafe: cafe == freezed
          ? _value.cafe
          : cafe // ignore: cast_nullable_to_non_nullable
              as CafeDetail?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CafeDetailCopyWith<$Res>? get cafe {
    if (_value.cafe == null) {
      return null;
    }

    return $CafeDetailCopyWith<$Res>(_value.cafe!, (value) {
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
  $Res call({CafeDetail? cafe, bool isLoading});

  @override
  $CafeDetailCopyWith<$Res>? get cafe;
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
    Object? cafe = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(CafeStateData(
      cafe: cafe == freezed
          ? _value.cafe
          : cafe // ignore: cast_nullable_to_non_nullable
              as CafeDetail?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CafeStateData implements CafeStateData {
  const _$CafeStateData({this.cafe = null, this.isLoading = false});

  @JsonKey()
  @override
  final CafeDetail? cafe;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CafeState(cafe: $cafe, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CafeStateData &&
            const DeepCollectionEquality().equals(other.cafe, cafe) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cafe),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  $CafeStateDataCopyWith<CafeStateData> get copyWith =>
      _$CafeStateDataCopyWithImpl<CafeStateData>(this, _$identity);
}

abstract class CafeStateData implements CafeState {
  const factory CafeStateData({CafeDetail? cafe, bool isLoading}) =
      _$CafeStateData;

  @override
  CafeDetail? get cafe;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $CafeStateDataCopyWith<CafeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
