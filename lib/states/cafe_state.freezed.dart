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

  CafeStateData call({CafeDetail? cafe = null}) {
    return CafeStateData(
      cafe: cafe,
    );
  }

  CafeStateLoading loading() {
    return const CafeStateLoading();
  }
}

/// @nodoc
const $CafeState = _$CafeStateTearOff();

/// @nodoc
mixin _$CafeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CafeDetail? cafe) $default, {
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(CafeDetail? cafe)? $default, {
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CafeDetail? cafe)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CafeStateData value) $default, {
    required TResult Function(CafeStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CafeStateData value)? $default, {
    TResult Function(CafeStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CafeStateData value)? $default, {
    TResult Function(CafeStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeStateCopyWith<$Res> {
  factory $CafeStateCopyWith(CafeState value, $Res Function(CafeState) then) =
      _$CafeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CafeStateCopyWithImpl<$Res> implements $CafeStateCopyWith<$Res> {
  _$CafeStateCopyWithImpl(this._value, this._then);

  final CafeState _value;
  // ignore: unused_field
  final $Res Function(CafeState) _then;
}

/// @nodoc
abstract class $CafeStateDataCopyWith<$Res> {
  factory $CafeStateDataCopyWith(
          CafeStateData value, $Res Function(CafeStateData) then) =
      _$CafeStateDataCopyWithImpl<$Res>;
  $Res call({CafeDetail? cafe});

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
  }) {
    return _then(CafeStateData(
      cafe: cafe == freezed
          ? _value.cafe
          : cafe // ignore: cast_nullable_to_non_nullable
              as CafeDetail?,
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

class _$CafeStateData implements CafeStateData {
  const _$CafeStateData({this.cafe = null});

  @JsonKey()
  @override
  final CafeDetail? cafe;

  @override
  String toString() {
    return 'CafeState(cafe: $cafe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CafeStateData &&
            const DeepCollectionEquality().equals(other.cafe, cafe));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cafe));

  @JsonKey(ignore: true)
  @override
  $CafeStateDataCopyWith<CafeStateData> get copyWith =>
      _$CafeStateDataCopyWithImpl<CafeStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CafeDetail? cafe) $default, {
    required TResult Function() loading,
  }) {
    return $default(cafe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(CafeDetail? cafe)? $default, {
    TResult Function()? loading,
  }) {
    return $default?.call(cafe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CafeDetail? cafe)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(cafe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CafeStateData value) $default, {
    required TResult Function(CafeStateLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CafeStateData value)? $default, {
    TResult Function(CafeStateLoading value)? loading,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CafeStateData value)? $default, {
    TResult Function(CafeStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CafeStateData implements CafeState {
  const factory CafeStateData({CafeDetail? cafe}) = _$CafeStateData;

  CafeDetail? get cafe;
  @JsonKey(ignore: true)
  $CafeStateDataCopyWith<CafeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeStateLoadingCopyWith<$Res> {
  factory $CafeStateLoadingCopyWith(
          CafeStateLoading value, $Res Function(CafeStateLoading) then) =
      _$CafeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CafeStateLoadingCopyWithImpl<$Res> extends _$CafeStateCopyWithImpl<$Res>
    implements $CafeStateLoadingCopyWith<$Res> {
  _$CafeStateLoadingCopyWithImpl(
      CafeStateLoading _value, $Res Function(CafeStateLoading) _then)
      : super(_value, (v) => _then(v as CafeStateLoading));

  @override
  CafeStateLoading get _value => super._value as CafeStateLoading;
}

/// @nodoc

class _$CafeStateLoading implements CafeStateLoading {
  const _$CafeStateLoading();

  @override
  String toString() {
    return 'CafeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CafeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CafeDetail? cafe) $default, {
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(CafeDetail? cafe)? $default, {
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CafeDetail? cafe)? $default, {
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
    TResult Function(CafeStateData value) $default, {
    required TResult Function(CafeStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CafeStateData value)? $default, {
    TResult Function(CafeStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CafeStateData value)? $default, {
    TResult Function(CafeStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CafeStateLoading implements CafeState {
  const factory CafeStateLoading() = _$CafeStateLoading;
}
