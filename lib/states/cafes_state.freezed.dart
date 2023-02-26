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

  CafesStateData call({List<Cafe> cafes = const <Cafe>[]}) {
    return CafesStateData(
      cafes: cafes,
    );
  }

  CafesStateLoading loading() {
    return const CafesStateLoading();
  }
}

/// @nodoc
const $CafesState = _$CafesStateTearOff();

/// @nodoc
mixin _$CafesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Cafe> cafes) $default, {
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Cafe> cafes)? $default, {
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Cafe> cafes)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CafesStateData value) $default, {
    required TResult Function(CafesStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CafesStateData value)? $default, {
    TResult Function(CafesStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CafesStateData value)? $default, {
    TResult Function(CafesStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafesStateCopyWith<$Res> {
  factory $CafesStateCopyWith(
          CafesState value, $Res Function(CafesState) then) =
      _$CafesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CafesStateCopyWithImpl<$Res> implements $CafesStateCopyWith<$Res> {
  _$CafesStateCopyWithImpl(this._value, this._then);

  final CafesState _value;
  // ignore: unused_field
  final $Res Function(CafesState) _then;
}

/// @nodoc
abstract class $CafesStateDataCopyWith<$Res> {
  factory $CafesStateDataCopyWith(
          CafesStateData value, $Res Function(CafesStateData) then) =
      _$CafesStateDataCopyWithImpl<$Res>;
  $Res call({List<Cafe> cafes});
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
  }) {
    return _then(CafesStateData(
      cafes: cafes == freezed
          ? _value.cafes
          : cafes // ignore: cast_nullable_to_non_nullable
              as List<Cafe>,
    ));
  }
}

/// @nodoc

class _$CafesStateData implements CafesStateData {
  const _$CafesStateData({this.cafes = const <Cafe>[]});

  @JsonKey()
  @override
  final List<Cafe> cafes;

  @override
  String toString() {
    return 'CafesState(cafes: $cafes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CafesStateData &&
            const DeepCollectionEquality().equals(other.cafes, cafes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cafes));

  @JsonKey(ignore: true)
  @override
  $CafesStateDataCopyWith<CafesStateData> get copyWith =>
      _$CafesStateDataCopyWithImpl<CafesStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Cafe> cafes) $default, {
    required TResult Function() loading,
  }) {
    return $default(cafes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Cafe> cafes)? $default, {
    TResult Function()? loading,
  }) {
    return $default?.call(cafes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Cafe> cafes)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(cafes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CafesStateData value) $default, {
    required TResult Function(CafesStateLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CafesStateData value)? $default, {
    TResult Function(CafesStateLoading value)? loading,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CafesStateData value)? $default, {
    TResult Function(CafesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CafesStateData implements CafesState {
  const factory CafesStateData({List<Cafe> cafes}) = _$CafesStateData;

  List<Cafe> get cafes;
  @JsonKey(ignore: true)
  $CafesStateDataCopyWith<CafesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafesStateLoadingCopyWith<$Res> {
  factory $CafesStateLoadingCopyWith(
          CafesStateLoading value, $Res Function(CafesStateLoading) then) =
      _$CafesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CafesStateLoadingCopyWithImpl<$Res>
    extends _$CafesStateCopyWithImpl<$Res>
    implements $CafesStateLoadingCopyWith<$Res> {
  _$CafesStateLoadingCopyWithImpl(
      CafesStateLoading _value, $Res Function(CafesStateLoading) _then)
      : super(_value, (v) => _then(v as CafesStateLoading));

  @override
  CafesStateLoading get _value => super._value as CafesStateLoading;
}

/// @nodoc

class _$CafesStateLoading implements CafesStateLoading {
  const _$CafesStateLoading();

  @override
  String toString() {
    return 'CafesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CafesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Cafe> cafes) $default, {
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Cafe> cafes)? $default, {
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Cafe> cafes)? $default, {
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
    TResult Function(CafesStateData value) $default, {
    required TResult Function(CafesStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CafesStateData value)? $default, {
    TResult Function(CafesStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CafesStateData value)? $default, {
    TResult Function(CafesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CafesStateLoading implements CafesState {
  const factory CafesStateLoading() = _$CafesStateLoading;
}
