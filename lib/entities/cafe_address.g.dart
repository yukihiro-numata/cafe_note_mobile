// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cafe_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CafeAddress _$$_CafeAddressFromJson(Map<String, dynamic> json) =>
    _$_CafeAddress(
      postCode: json['post_code'] as String,
      prefecture: json['prefecture'] as String,
      city: json['city'] as String,
      address: json['address'] as String,
      building: json['building'] as String,
    );

Map<String, dynamic> _$$_CafeAddressToJson(_$_CafeAddress instance) =>
    <String, dynamic>{
      'post_code': instance.postCode,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'address': instance.address,
      'building': instance.building,
    };
