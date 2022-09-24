import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_cafe_state.freezed.dart';

@freezed
abstract class CreateCafeState with _$CreateCafeState {
  const factory CreateCafeState({
    required GlobalKey<FormState> formKey,
    required GlobalKey<FormState> basicInfoFormKey,
    String? name,
    String? postCode,
    String? prefecture,
    String? city,
    String? address,
    String? building,
    String? nearestStation,
    String? transportation,
    String? businessHours,
    String? regularHoliday,
    @Default(false) bool? canTakeout,
    @Default(false) bool? hasParking,
    @Default(false) bool? hasWifi,
    @Default(false) bool? hasPowerSupply,
    @Default(false) bool? canSmoking,
    String? memo,
    String? imgPath,
    String? tabelogUrl,
  }) = CreateCafeStateData;
}
