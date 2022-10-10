// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cafe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cafe _$$_CafeFromJson(Map<String, dynamic> json) => _$_Cafe(
      id: json['id'] as int,
      name: json['name'] as String,
      nearestStation: json['nearest_station'] as String,
      transportation: json['transportation'] as String,
      businessHours: json['business_hours'] as String,
      regularHoliday: json['regular_holiday'] as String,
      canTakeout: json['can_takeout'] as bool,
      hasParking: json['has_parking'] as bool,
      hasWifi: json['has_wifi'] as bool,
      hasPowerSupply: json['has_power_supply'] as bool,
      canSmoking: json['can_smoking'] as bool,
      imgPath: json['img_path'] as String,
    );

Map<String, dynamic> _$$_CafeToJson(_$_Cafe instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nearest_station': instance.nearestStation,
      'transportation': instance.transportation,
      'business_hours': instance.businessHours,
      'regular_holiday': instance.regularHoliday,
      'can_takeout': instance.canTakeout,
      'has_parking': instance.hasParking,
      'has_wifi': instance.hasWifi,
      'has_power_supply': instance.hasPowerSupply,
      'can_smoking': instance.canSmoking,
      'img_path': instance.imgPath,
    };
