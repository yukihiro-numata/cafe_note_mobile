// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cafe_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CafeAddress _$CafeAddressFromJson(Map<String, dynamic> json) {
  return _CafeAddress.fromJson(json);
}

/// @nodoc
class _$CafeAddressTearOff {
  const _$CafeAddressTearOff();

  _CafeAddress call(
      {@JsonKey(name: 'post_code') required String postCode,
      @JsonKey(name: 'prefecture') required String prefecture,
      @JsonKey(name: 'city') required String city,
      @JsonKey(name: 'address') required String address,
      @JsonKey(name: 'building') required String building}) {
    return _CafeAddress(
      postCode: postCode,
      prefecture: prefecture,
      city: city,
      address: address,
      building: building,
    );
  }

  CafeAddress fromJson(Map<String, Object?> json) {
    return CafeAddress.fromJson(json);
  }
}

/// @nodoc
const $CafeAddress = _$CafeAddressTearOff();

/// @nodoc
mixin _$CafeAddress {
  @JsonKey(name: 'post_code')
  String get postCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'prefecture')
  String get prefecture => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'building')
  String get building => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafeAddressCopyWith<CafeAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeAddressCopyWith<$Res> {
  factory $CafeAddressCopyWith(
          CafeAddress value, $Res Function(CafeAddress) then) =
      _$CafeAddressCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'post_code') String postCode,
      @JsonKey(name: 'prefecture') String prefecture,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'building') String building});
}

/// @nodoc
class _$CafeAddressCopyWithImpl<$Res> implements $CafeAddressCopyWith<$Res> {
  _$CafeAddressCopyWithImpl(this._value, this._then);

  final CafeAddress _value;
  // ignore: unused_field
  final $Res Function(CafeAddress) _then;

  @override
  $Res call({
    Object? postCode = freezed,
    Object? prefecture = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? building = freezed,
  }) {
    return _then(_value.copyWith(
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CafeAddressCopyWith<$Res>
    implements $CafeAddressCopyWith<$Res> {
  factory _$CafeAddressCopyWith(
          _CafeAddress value, $Res Function(_CafeAddress) then) =
      __$CafeAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'post_code') String postCode,
      @JsonKey(name: 'prefecture') String prefecture,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'building') String building});
}

/// @nodoc
class __$CafeAddressCopyWithImpl<$Res> extends _$CafeAddressCopyWithImpl<$Res>
    implements _$CafeAddressCopyWith<$Res> {
  __$CafeAddressCopyWithImpl(
      _CafeAddress _value, $Res Function(_CafeAddress) _then)
      : super(_value, (v) => _then(v as _CafeAddress));

  @override
  _CafeAddress get _value => super._value as _CafeAddress;

  @override
  $Res call({
    Object? postCode = freezed,
    Object? prefecture = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? building = freezed,
  }) {
    return _then(_CafeAddress(
      postCode: postCode == freezed
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
      prefecture: prefecture == freezed
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CafeAddress extends _CafeAddress {
  const _$_CafeAddress(
      {@JsonKey(name: 'post_code') required this.postCode,
      @JsonKey(name: 'prefecture') required this.prefecture,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'building') required this.building})
      : super._();

  factory _$_CafeAddress.fromJson(Map<String, dynamic> json) =>
      _$$_CafeAddressFromJson(json);

  @override
  @JsonKey(name: 'post_code')
  final String postCode;
  @override
  @JsonKey(name: 'prefecture')
  final String prefecture;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'building')
  final String building;

  @override
  String toString() {
    return 'CafeAddress(postCode: $postCode, prefecture: $prefecture, city: $city, address: $address, building: $building)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CafeAddress &&
            const DeepCollectionEquality().equals(other.postCode, postCode) &&
            const DeepCollectionEquality()
                .equals(other.prefecture, prefecture) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.building, building));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postCode),
      const DeepCollectionEquality().hash(prefecture),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(building));

  @JsonKey(ignore: true)
  @override
  _$CafeAddressCopyWith<_CafeAddress> get copyWith =>
      __$CafeAddressCopyWithImpl<_CafeAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CafeAddressToJson(this);
  }
}

abstract class _CafeAddress extends CafeAddress {
  const factory _CafeAddress(
      {@JsonKey(name: 'post_code') required String postCode,
      @JsonKey(name: 'prefecture') required String prefecture,
      @JsonKey(name: 'city') required String city,
      @JsonKey(name: 'address') required String address,
      @JsonKey(name: 'building') required String building}) = _$_CafeAddress;
  const _CafeAddress._() : super._();

  factory _CafeAddress.fromJson(Map<String, dynamic> json) =
      _$_CafeAddress.fromJson;

  @override
  @JsonKey(name: 'post_code')
  String get postCode;
  @override
  @JsonKey(name: 'prefecture')
  String get prefecture;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'building')
  String get building;
  @override
  @JsonKey(ignore: true)
  _$CafeAddressCopyWith<_CafeAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
