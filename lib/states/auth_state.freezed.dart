// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateData call(
      {required bool authenticated,
      auth.User? firebaseUser = null,
      User? user = null}) {
    return AuthStateData(
      authenticated: authenticated,
      firebaseUser: firebaseUser,
      user: user,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  bool get authenticated => throw _privateConstructorUsedError;
  auth.User? get firebaseUser => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({bool authenticated, auth.User? firebaseUser, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? authenticated = freezed,
    Object? firebaseUser = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      authenticated: authenticated == freezed
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      firebaseUser: firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as auth.User?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class $AuthStateDataCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthStateDataCopyWith(
          AuthStateData value, $Res Function(AuthStateData) then) =
      _$AuthStateDataCopyWithImpl<$Res>;
  @override
  $Res call({bool authenticated, auth.User? firebaseUser, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateDataCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateDataCopyWith<$Res> {
  _$AuthStateDataCopyWithImpl(
      AuthStateData _value, $Res Function(AuthStateData) _then)
      : super(_value, (v) => _then(v as AuthStateData));

  @override
  AuthStateData get _value => super._value as AuthStateData;

  @override
  $Res call({
    Object? authenticated = freezed,
    Object? firebaseUser = freezed,
    Object? user = freezed,
  }) {
    return _then(AuthStateData(
      authenticated: authenticated == freezed
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      firebaseUser: firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as auth.User?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$AuthStateData implements AuthStateData {
  const _$AuthStateData(
      {required this.authenticated,
      this.firebaseUser = null,
      this.user = null});

  @override
  final bool authenticated;
  @JsonKey()
  @override
  final auth.User? firebaseUser;
  @JsonKey()
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState(authenticated: $authenticated, firebaseUser: $firebaseUser, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateData &&
            const DeepCollectionEquality()
                .equals(other.authenticated, authenticated) &&
            const DeepCollectionEquality()
                .equals(other.firebaseUser, firebaseUser) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authenticated),
      const DeepCollectionEquality().hash(firebaseUser),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthStateDataCopyWith<AuthStateData> get copyWith =>
      _$AuthStateDataCopyWithImpl<AuthStateData>(this, _$identity);
}

abstract class AuthStateData implements AuthState {
  const factory AuthStateData(
      {required bool authenticated,
      auth.User? firebaseUser,
      User? user}) = _$AuthStateData;

  @override
  bool get authenticated;
  @override
  auth.User? get firebaseUser;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  $AuthStateDataCopyWith<AuthStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
