import 'package:cafe_note_mobile/entities/cafe_address.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cafe_detail.freezed.dart';
part 'cafe_detail.g.dart';

@freezed
abstract class CafeDetail with _$CafeDetail {
  const CafeDetail._();
  const factory CafeDetail({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'nearest_station') required String nearestStation,
    @JsonKey(name: 'transportation') required String transportation,
    @JsonKey(name: 'business_hours') required String businessHours,
    @JsonKey(name: 'regular_holiday') required String regularHoliday,
    @JsonKey(name: 'can_takeout') required bool canTakeout,
    @JsonKey(name: 'has_parking') required bool hasParking,
    @JsonKey(name: 'has_wifi') required bool hasWifi,
    @JsonKey(name: 'has_power_supply') required bool hasPowerSupply,
    @JsonKey(name: 'can_smoking') required bool canSmoking,
    @JsonKey(name: 'img_path') required String imgPath,
    @JsonKey(name: 'cafe_address') required CafeAddress address,
  }) = _CafeDetail;

  factory CafeDetail.fromJson(Map<String, dynamic> json) =>
      _$CafeDetailFromJson(json);
}
