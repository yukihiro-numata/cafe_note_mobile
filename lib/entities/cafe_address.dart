import 'package:freezed_annotation/freezed_annotation.dart';

part 'cafe_address.freezed.dart';
part 'cafe_address.g.dart';

@freezed
abstract class CafeAddress with _$CafeAddress {
  const CafeAddress._();
  const factory CafeAddress({
    @JsonKey(name: 'post_code') required String postCode,
    @JsonKey(name: 'prefecture') required String prefecture,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'building') required String building,
  }) = _CafeAddress;

  factory CafeAddress.fromJson(Map<String, dynamic> json) =>
      _$CafeAddressFromJson(json);
}
