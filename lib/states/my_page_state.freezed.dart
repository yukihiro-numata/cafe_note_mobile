// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyPageStateTearOff {
  const _$MyPageStateTearOff();

  MyPageStateData call({String? email, String? password}) {
    return MyPageStateData(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $MyPageState = _$MyPageStateTearOff();

/// @nodoc
mixin _$MyPageState {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyPageStateCopyWith<MyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageStateCopyWith<$Res> {
  factory $MyPageStateCopyWith(
          MyPageState value, $Res Function(MyPageState) then) =
      _$MyPageStateCopyWithImpl<$Res>;
  $Res call({String? email, String? password});
}

/// @nodoc
class _$MyPageStateCopyWithImpl<$Res> implements $MyPageStateCopyWith<$Res> {
  _$MyPageStateCopyWithImpl(this._value, this._then);

  final MyPageState _value;
  // ignore: unused_field
  final $Res Function(MyPageState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $MyPageStateDataCopyWith<$Res>
    implements $MyPageStateCopyWith<$Res> {
  factory $MyPageStateDataCopyWith(
          MyPageStateData value, $Res Function(MyPageStateData) then) =
      _$MyPageStateDataCopyWithImpl<$Res>;
  @override
  $Res call({String? email, String? password});
}

/// @nodoc
class _$MyPageStateDataCopyWithImpl<$Res>
    extends _$MyPageStateCopyWithImpl<$Res>
    implements $MyPageStateDataCopyWith<$Res> {
  _$MyPageStateDataCopyWithImpl(
      MyPageStateData _value, $Res Function(MyPageStateData) _then)
      : super(_value, (v) => _then(v as MyPageStateData));

  @override
  MyPageStateData get _value => super._value as MyPageStateData;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(MyPageStateData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MyPageStateData implements MyPageStateData {
  const _$MyPageStateData({this.email, this.password});

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'MyPageState(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyPageStateData &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $MyPageStateDataCopyWith<MyPageStateData> get copyWith =>
      _$MyPageStateDataCopyWithImpl<MyPageStateData>(this, _$identity);
}

abstract class MyPageStateData implements MyPageState {
  const factory MyPageStateData({String? email, String? password}) =
      _$MyPageStateData;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  $MyPageStateDataCopyWith<MyPageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
