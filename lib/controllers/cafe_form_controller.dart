import 'package:cafe_note_mobile/services/cafe_service.dart';
import 'package:cafe_note_mobile/states/cafe_form_state.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class CafeFormController extends StateNotifier<CafeFormState>
    with LocatorMixin {
  CafeFormController() : super(CafeFormState(formKey: GlobalKey<FormState>()));

  static const String formKeyName = "name";
  static const String formKeyAddress = "address";
  static const String formKeyNearestStation = "nearestStation";
  static const String formKeyTransportation = "transportation";
  static const String formKeyBusinessHours = "businessHours";
  static const String formKeyRegularHoliday = "regularHoliday";
  static const String formKeyMemo = "memo";
  static const String formKeyImgPath = "imgPath";
  static const String formKeyTabelogUrl = "tabelogUrl";
  static const String formKeyCanTakeout = "canTakeout";
  static const String formKeyHasParking = "hasParking";
  static const String formKeyHasWifi = "hasWifi";
  static const String formKeyHasPowerSupply = "hasPowerSupply";
  static const String formKeyCanSmoking = "canSmoking";

  final CafeService _service = CafeService();

  void changeStringInput({
    required String key,
    required String? value,
  }) {
    switch (key) {
      case formKeyName:
        state = state.copyWith(name: value);
        break;
      case formKeyAddress:
        state = state.copyWith(address: value);
        break;
      case formKeyNearestStation:
        state = state.copyWith(nearestStation: value);
        break;
      case formKeyTransportation:
        state = state.copyWith(transportation: value);
        break;
      case formKeyBusinessHours:
        state = state.copyWith(businessHours: value);
        break;
      case formKeyRegularHoliday:
        state = state.copyWith(regularHoliday: value);
        break;
      case formKeyMemo:
        state = state.copyWith(memo: value);
        break;
      case formKeyImgPath:
        state = state.copyWith(imgPath: value);
        break;
      case formKeyTabelogUrl:
        state = state.copyWith(tabelogUrl: value);
        break;
      default:
        assert(false, "argument error");
    }
  }

  void changeBoolInput({
    required String key,
    required bool? value,
  }) {
    switch (key) {
      case formKeyCanTakeout:
        state = state.copyWith(canTakeout: value);
        break;
      case formKeyHasParking:
        state = state.copyWith(hasParking: value);
        break;
      case formKeyHasWifi:
        state = state.copyWith(hasWifi: value);
        break;
      case formKeyHasPowerSupply:
        state = state.copyWith(hasPowerSupply: value);
        break;
      case formKeyCanSmoking:
        state = state.copyWith(canSmoking: value);
        break;
      default:
        assert(false, "argument error");
    }
  }

  Future<void> handleSubmitButtonPressed() async {
    if (!(state.formKey.currentState?.validate() ?? false)) {
      return;
    }
    state.formKey.currentState?.save();

    await _service.create(
      name: state.name!,
      address: state.address!,
      nearestStation: state.nearestStation!,
      transportation: state.transportation!,
      businessHours: state.businessHours!,
      regularHoliday: state.regularHoliday!,
      canTakeout: state.canTakeout!,
      hasParking: state.hasParking!,
      hasWifi: state.hasWifi!,
      hasPowerSupply: state.hasPowerSupply!,
      canSmoking: state.canSmoking!,
      memo: state.memo!,
      imgPath: "assets/icon/coffee-1.svg",
      tabelogUrl: state.tabelogUrl,
    );
  }
}
