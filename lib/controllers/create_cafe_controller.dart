import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:cafe_note_mobile/services/cafe_service.dart';
import 'package:cafe_note_mobile/states/create_cafe_state.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class CreateCafeController extends StateNotifier<CreateCafeState>
    with LocatorMixin {
  CreateCafeController() : super(const CreateCafeState());

  static const String formKeyName = "name";
  static const String formKeyPostCode = "postCode";
  static const String formKeyPrefecture = "prefecture";
  static const String formKeyCity = "city";
  static const String formKeyAddress = "address";
  static const String formKeyBuilding = "building";
  static const String formKeyNearestStation = "nearestStation";
  static const String formKeyTransportation = "transportation";
  static const String formKeyBusinessHours = "businessHours";
  static const String formKeyRegularHoliday = "regularHoliday";
  static const String formKeyImgPath = "imgPath";
  static const String formKeyCanTakeout = "canTakeout";
  static const String formKeyHasParking = "hasParking";
  static const String formKeyHasWifi = "hasWifi";
  static const String formKeyHasPowerSupply = "hasPowerSupply";
  static const String formKeyCanSmoking = "canSmoking";
  static const List<String> prefectures = [
    "北海道",
    "青森県",
    "岩手県",
    "宮城県",
    "秋田県",
    "山形県",
    "福島県",
    "茨城県",
    "栃木県",
    "群馬県",
    "埼玉県",
    "千葉県",
    "東京都",
    "神奈川県",
    "新潟県",
    "富山県",
    "石川県",
    "福井県",
    "山梨県",
    "長野県",
    "岐阜県",
    "静岡県",
    "愛知県",
    "三重県",
    "滋賀県",
    "京都府",
    "大阪府",
    "兵庫県",
    "奈良県",
    "和歌山県",
    "鳥取県",
    "島根県",
    "岡山県",
    "広島県",
    "山口県",
    "徳島県",
    "香川県",
    "愛媛県",
    "高知県",
    "福岡県",
    "佐賀県",
    "長崎県",
    "熊本県",
    "大分県",
    "宮崎県",
    "鹿児島県",
    "沖縄県",
  ];

  final CafeService _service = CafeService();

  PreferredSizeWidget buildAppBar(BuildContext context) => AppBar(
        title: const Text("カフェ登録"),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => handleCloseCreateCafe(context),
        ),
      );

  void changeStringInput({
    required String key,
    required String? value,
  }) {
    switch (key) {
      case formKeyPostCode:
        state = state.copyWith(postCode: value);
        break;
      case formKeyPrefecture:
        state = state.copyWith(prefecture: value);
        break;
      case formKeyCity:
        state = state.copyWith(city: value);
        break;
      case formKeyAddress:
        state = state.copyWith(address: value);
        break;
      case formKeyBuilding:
        state = state.copyWith(building: value);
        break;
      case formKeyName:
        state = state.copyWith(name: value);
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
      case formKeyImgPath:
        state = state.copyWith(imgPath: value);
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

  void handleCloseCreateCafe(BuildContext context) {
    Navigator.pushNamed(
      context,
      RouteConfig.cafes,
    );
  }

  void handleToBasicInfo(
    BuildContext context,
    GlobalKey<FormState> formKey,
  ) {
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }
    formKey.currentState?.save();

    Navigator.pushNamed(
      context,
      RouteConfig.createCafeBasicInfo,
    );
  }

  Future<void> handleSubmitButtonPressed(GlobalKey<FormState> formKey) async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }
    formKey.currentState?.save();

    await _service.create(
      name: state.name!,
      postCode: state.postCode!,
      prefecture: state.prefecture!,
      city: state.city!,
      address: state.address!,
      building: state.building!,
      nearestStation: state.nearestStation!,
      transportation: state.transportation!,
      businessHours: state.businessHours!,
      regularHoliday: state.regularHoliday!,
      canTakeout: state.canTakeout!,
      hasParking: state.hasParking!,
      hasWifi: state.hasWifi!,
      hasPowerSupply: state.hasPowerSupply!,
      canSmoking: state.canSmoking!,
      imgPath: "assets/icon/coffee-1.svg",
    );
  }
}
