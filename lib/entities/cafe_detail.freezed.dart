// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cafe_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CafeDetail _$CafeDetailFromJson(Map<String, dynamic> json) {
  return _CafeDetail.fromJson(json);
}

/// @nodoc
class _$CafeDetailTearOff {
  const _$CafeDetailTearOff();

  _CafeDetail call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'address') required String address,
      @JsonKey(name: 'nearest_station') required String nearestStation,
      @JsonKey(name: 'transportation') required String transportation,
      @JsonKey(name: 'business_hours') required String businessHours,
      @JsonKey(name: 'regular_holiday') required String regularHoliday,
      @JsonKey(name: 'can_takeout') required bool canTakeout,
      @JsonKey(name: 'has_parking') required bool hasParking,
      @JsonKey(name: 'has_wifi') required bool hasWifi,
      @JsonKey(name: 'has_power_supply') required bool hasPowerSupply,
      @JsonKey(name: 'can_smoking') required bool canSmoking,
      @JsonKey(name: 'memo') required String memo,
      @JsonKey(name: 'img_path') required String imgPath,
      @JsonKey(name: 'tabelog_url') String? tabelogUrl}) {
    return _CafeDetail(
      id: id,
      name: name,
      address: address,
      nearestStation: nearestStation,
      transportation: transportation,
      businessHours: businessHours,
      regularHoliday: regularHoliday,
      canTakeout: canTakeout,
      hasParking: hasParking,
      hasWifi: hasWifi,
      hasPowerSupply: hasPowerSupply,
      canSmoking: canSmoking,
      memo: memo,
      imgPath: imgPath,
      tabelogUrl: tabelogUrl,
    );
  }

  CafeDetail fromJson(Map<String, Object?> json) {
    return CafeDetail.fromJson(json);
  }
}

/// @nodoc
const $CafeDetail = _$CafeDetailTearOff();

/// @nodoc
mixin _$CafeDetail {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'nearest_station')
  String get nearestStation => throw _privateConstructorUsedError;
  @JsonKey(name: 'transportation')
  String get transportation => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_hours')
  String get businessHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'regular_holiday')
  String get regularHoliday => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_takeout')
  bool get canTakeout => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_parking')
  bool get hasParking => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_wifi')
  bool get hasWifi => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_power_supply')
  bool get hasPowerSupply => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_smoking')
  bool get canSmoking => throw _privateConstructorUsedError;
  @JsonKey(name: 'memo')
  String get memo => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_path')
  String get imgPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'tabelog_url')
  String? get tabelogUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafeDetailCopyWith<CafeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeDetailCopyWith<$Res> {
  factory $CafeDetailCopyWith(
          CafeDetail value, $Res Function(CafeDetail) then) =
      _$CafeDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'nearest_station') String nearestStation,
      @JsonKey(name: 'transportation') String transportation,
      @JsonKey(name: 'business_hours') String businessHours,
      @JsonKey(name: 'regular_holiday') String regularHoliday,
      @JsonKey(name: 'can_takeout') bool canTakeout,
      @JsonKey(name: 'has_parking') bool hasParking,
      @JsonKey(name: 'has_wifi') bool hasWifi,
      @JsonKey(name: 'has_power_supply') bool hasPowerSupply,
      @JsonKey(name: 'can_smoking') bool canSmoking,
      @JsonKey(name: 'memo') String memo,
      @JsonKey(name: 'img_path') String imgPath,
      @JsonKey(name: 'tabelog_url') String? tabelogUrl});
}

/// @nodoc
class _$CafeDetailCopyWithImpl<$Res> implements $CafeDetailCopyWith<$Res> {
  _$CafeDetailCopyWithImpl(this._value, this._then);

  final CafeDetail _value;
  // ignore: unused_field
  final $Res Function(CafeDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? nearestStation = freezed,
    Object? transportation = freezed,
    Object? businessHours = freezed,
    Object? regularHoliday = freezed,
    Object? canTakeout = freezed,
    Object? hasParking = freezed,
    Object? hasWifi = freezed,
    Object? hasPowerSupply = freezed,
    Object? canSmoking = freezed,
    Object? memo = freezed,
    Object? imgPath = freezed,
    Object? tabelogUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      nearestStation: nearestStation == freezed
          ? _value.nearestStation
          : nearestStation // ignore: cast_nullable_to_non_nullable
              as String,
      transportation: transportation == freezed
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String,
      businessHours: businessHours == freezed
          ? _value.businessHours
          : businessHours // ignore: cast_nullable_to_non_nullable
              as String,
      regularHoliday: regularHoliday == freezed
          ? _value.regularHoliday
          : regularHoliday // ignore: cast_nullable_to_non_nullable
              as String,
      canTakeout: canTakeout == freezed
          ? _value.canTakeout
          : canTakeout // ignore: cast_nullable_to_non_nullable
              as bool,
      hasParking: hasParking == freezed
          ? _value.hasParking
          : hasParking // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWifi: hasWifi == freezed
          ? _value.hasWifi
          : hasWifi // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPowerSupply: hasPowerSupply == freezed
          ? _value.hasPowerSupply
          : hasPowerSupply // ignore: cast_nullable_to_non_nullable
              as bool,
      canSmoking: canSmoking == freezed
          ? _value.canSmoking
          : canSmoking // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: imgPath == freezed
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      tabelogUrl: tabelogUrl == freezed
          ? _value.tabelogUrl
          : tabelogUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CafeDetailCopyWith<$Res> implements $CafeDetailCopyWith<$Res> {
  factory _$CafeDetailCopyWith(
          _CafeDetail value, $Res Function(_CafeDetail) then) =
      __$CafeDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'nearest_station') String nearestStation,
      @JsonKey(name: 'transportation') String transportation,
      @JsonKey(name: 'business_hours') String businessHours,
      @JsonKey(name: 'regular_holiday') String regularHoliday,
      @JsonKey(name: 'can_takeout') bool canTakeout,
      @JsonKey(name: 'has_parking') bool hasParking,
      @JsonKey(name: 'has_wifi') bool hasWifi,
      @JsonKey(name: 'has_power_supply') bool hasPowerSupply,
      @JsonKey(name: 'can_smoking') bool canSmoking,
      @JsonKey(name: 'memo') String memo,
      @JsonKey(name: 'img_path') String imgPath,
      @JsonKey(name: 'tabelog_url') String? tabelogUrl});
}

/// @nodoc
class __$CafeDetailCopyWithImpl<$Res> extends _$CafeDetailCopyWithImpl<$Res>
    implements _$CafeDetailCopyWith<$Res> {
  __$CafeDetailCopyWithImpl(
      _CafeDetail _value, $Res Function(_CafeDetail) _then)
      : super(_value, (v) => _then(v as _CafeDetail));

  @override
  _CafeDetail get _value => super._value as _CafeDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? nearestStation = freezed,
    Object? transportation = freezed,
    Object? businessHours = freezed,
    Object? regularHoliday = freezed,
    Object? canTakeout = freezed,
    Object? hasParking = freezed,
    Object? hasWifi = freezed,
    Object? hasPowerSupply = freezed,
    Object? canSmoking = freezed,
    Object? memo = freezed,
    Object? imgPath = freezed,
    Object? tabelogUrl = freezed,
  }) {
    return _then(_CafeDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      nearestStation: nearestStation == freezed
          ? _value.nearestStation
          : nearestStation // ignore: cast_nullable_to_non_nullable
              as String,
      transportation: transportation == freezed
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String,
      businessHours: businessHours == freezed
          ? _value.businessHours
          : businessHours // ignore: cast_nullable_to_non_nullable
              as String,
      regularHoliday: regularHoliday == freezed
          ? _value.regularHoliday
          : regularHoliday // ignore: cast_nullable_to_non_nullable
              as String,
      canTakeout: canTakeout == freezed
          ? _value.canTakeout
          : canTakeout // ignore: cast_nullable_to_non_nullable
              as bool,
      hasParking: hasParking == freezed
          ? _value.hasParking
          : hasParking // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWifi: hasWifi == freezed
          ? _value.hasWifi
          : hasWifi // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPowerSupply: hasPowerSupply == freezed
          ? _value.hasPowerSupply
          : hasPowerSupply // ignore: cast_nullable_to_non_nullable
              as bool,
      canSmoking: canSmoking == freezed
          ? _value.canSmoking
          : canSmoking // ignore: cast_nullable_to_non_nullable
              as bool,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      imgPath: imgPath == freezed
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      tabelogUrl: tabelogUrl == freezed
          ? _value.tabelogUrl
          : tabelogUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CafeDetail extends _CafeDetail with DiagnosticableTreeMixin {
  const _$_CafeDetail(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'nearest_station') required this.nearestStation,
      @JsonKey(name: 'transportation') required this.transportation,
      @JsonKey(name: 'business_hours') required this.businessHours,
      @JsonKey(name: 'regular_holiday') required this.regularHoliday,
      @JsonKey(name: 'can_takeout') required this.canTakeout,
      @JsonKey(name: 'has_parking') required this.hasParking,
      @JsonKey(name: 'has_wifi') required this.hasWifi,
      @JsonKey(name: 'has_power_supply') required this.hasPowerSupply,
      @JsonKey(name: 'can_smoking') required this.canSmoking,
      @JsonKey(name: 'memo') required this.memo,
      @JsonKey(name: 'img_path') required this.imgPath,
      @JsonKey(name: 'tabelog_url') this.tabelogUrl})
      : super._();

  factory _$_CafeDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CafeDetailFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'nearest_station')
  final String nearestStation;
  @override
  @JsonKey(name: 'transportation')
  final String transportation;
  @override
  @JsonKey(name: 'business_hours')
  final String businessHours;
  @override
  @JsonKey(name: 'regular_holiday')
  final String regularHoliday;
  @override
  @JsonKey(name: 'can_takeout')
  final bool canTakeout;
  @override
  @JsonKey(name: 'has_parking')
  final bool hasParking;
  @override
  @JsonKey(name: 'has_wifi')
  final bool hasWifi;
  @override
  @JsonKey(name: 'has_power_supply')
  final bool hasPowerSupply;
  @override
  @JsonKey(name: 'can_smoking')
  final bool canSmoking;
  @override
  @JsonKey(name: 'memo')
  final String memo;
  @override
  @JsonKey(name: 'img_path')
  final String imgPath;
  @override
  @JsonKey(name: 'tabelog_url')
  final String? tabelogUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CafeDetail(id: $id, name: $name, address: $address, nearestStation: $nearestStation, transportation: $transportation, businessHours: $businessHours, regularHoliday: $regularHoliday, canTakeout: $canTakeout, hasParking: $hasParking, hasWifi: $hasWifi, hasPowerSupply: $hasPowerSupply, canSmoking: $canSmoking, memo: $memo, imgPath: $imgPath, tabelogUrl: $tabelogUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CafeDetail'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('nearestStation', nearestStation))
      ..add(DiagnosticsProperty('transportation', transportation))
      ..add(DiagnosticsProperty('businessHours', businessHours))
      ..add(DiagnosticsProperty('regularHoliday', regularHoliday))
      ..add(DiagnosticsProperty('canTakeout', canTakeout))
      ..add(DiagnosticsProperty('hasParking', hasParking))
      ..add(DiagnosticsProperty('hasWifi', hasWifi))
      ..add(DiagnosticsProperty('hasPowerSupply', hasPowerSupply))
      ..add(DiagnosticsProperty('canSmoking', canSmoking))
      ..add(DiagnosticsProperty('memo', memo))
      ..add(DiagnosticsProperty('imgPath', imgPath))
      ..add(DiagnosticsProperty('tabelogUrl', tabelogUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CafeDetail &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.nearestStation, nearestStation) &&
            const DeepCollectionEquality()
                .equals(other.transportation, transportation) &&
            const DeepCollectionEquality()
                .equals(other.businessHours, businessHours) &&
            const DeepCollectionEquality()
                .equals(other.regularHoliday, regularHoliday) &&
            const DeepCollectionEquality()
                .equals(other.canTakeout, canTakeout) &&
            const DeepCollectionEquality()
                .equals(other.hasParking, hasParking) &&
            const DeepCollectionEquality().equals(other.hasWifi, hasWifi) &&
            const DeepCollectionEquality()
                .equals(other.hasPowerSupply, hasPowerSupply) &&
            const DeepCollectionEquality()
                .equals(other.canSmoking, canSmoking) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other.imgPath, imgPath) &&
            const DeepCollectionEquality()
                .equals(other.tabelogUrl, tabelogUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(nearestStation),
      const DeepCollectionEquality().hash(transportation),
      const DeepCollectionEquality().hash(businessHours),
      const DeepCollectionEquality().hash(regularHoliday),
      const DeepCollectionEquality().hash(canTakeout),
      const DeepCollectionEquality().hash(hasParking),
      const DeepCollectionEquality().hash(hasWifi),
      const DeepCollectionEquality().hash(hasPowerSupply),
      const DeepCollectionEquality().hash(canSmoking),
      const DeepCollectionEquality().hash(memo),
      const DeepCollectionEquality().hash(imgPath),
      const DeepCollectionEquality().hash(tabelogUrl));

  @JsonKey(ignore: true)
  @override
  _$CafeDetailCopyWith<_CafeDetail> get copyWith =>
      __$CafeDetailCopyWithImpl<_CafeDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CafeDetailToJson(this);
  }
}

abstract class _CafeDetail extends CafeDetail {
  const factory _CafeDetail(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'address') required String address,
      @JsonKey(name: 'nearest_station') required String nearestStation,
      @JsonKey(name: 'transportation') required String transportation,
      @JsonKey(name: 'business_hours') required String businessHours,
      @JsonKey(name: 'regular_holiday') required String regularHoliday,
      @JsonKey(name: 'can_takeout') required bool canTakeout,
      @JsonKey(name: 'has_parking') required bool hasParking,
      @JsonKey(name: 'has_wifi') required bool hasWifi,
      @JsonKey(name: 'has_power_supply') required bool hasPowerSupply,
      @JsonKey(name: 'can_smoking') required bool canSmoking,
      @JsonKey(name: 'memo') required String memo,
      @JsonKey(name: 'img_path') required String imgPath,
      @JsonKey(name: 'tabelog_url') String? tabelogUrl}) = _$_CafeDetail;
  const _CafeDetail._() : super._();

  factory _CafeDetail.fromJson(Map<String, dynamic> json) =
      _$_CafeDetail.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'nearest_station')
  String get nearestStation;
  @override
  @JsonKey(name: 'transportation')
  String get transportation;
  @override
  @JsonKey(name: 'business_hours')
  String get businessHours;
  @override
  @JsonKey(name: 'regular_holiday')
  String get regularHoliday;
  @override
  @JsonKey(name: 'can_takeout')
  bool get canTakeout;
  @override
  @JsonKey(name: 'has_parking')
  bool get hasParking;
  @override
  @JsonKey(name: 'has_wifi')
  bool get hasWifi;
  @override
  @JsonKey(name: 'has_power_supply')
  bool get hasPowerSupply;
  @override
  @JsonKey(name: 'can_smoking')
  bool get canSmoking;
  @override
  @JsonKey(name: 'memo')
  String get memo;
  @override
  @JsonKey(name: 'img_path')
  String get imgPath;
  @override
  @JsonKey(name: 'tabelog_url')
  String? get tabelogUrl;
  @override
  @JsonKey(ignore: true)
  _$CafeDetailCopyWith<_CafeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
