import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cafe.freezed.dart';
part 'cafe.g.dart';

@freezed
abstract class Cafe with _$Cafe {
  const Cafe._();
  const factory Cafe({
    @JsonKey(name: 'id') required int id,
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
    @JsonKey(name: 'tabelog_url') String? tabelogUrl,
  }) = _Cafe;

  factory Cafe.fromJson(Map<String, dynamic> json) => _$CafeFromJson(json);
}
