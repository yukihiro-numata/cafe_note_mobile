import 'package:cafe_note_mobile/helpers/validators/common_validator.dart';

class CafeFormValidator {
  static const postCodeDigit = 7;

  static String? name(String? value) {
    return CommonValidator.checkIsEmpty(value) ? "必須入力です" : null;
  }

  static String? postCode(String? value) {
    if (CommonValidator.checkIsEmpty(value)) return "必須入力です";
    if (!CommonValidator.checkIsInt(value!)) return "数値で入力してください";
    if (!CommonValidator.checkDigit(
      value: value,
      digit: postCodeDigit,
    )) {
      return "7桁で入力してください";
    }

    return null;
  }

  static String? prefecture(String? value) {
    return (CommonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  static String? city(String? value) {
    return (CommonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  static String? address(String? value) {
    return (CommonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  static String? building(String? value) {
    return null;
  }

  static String? nearestStation(String? value) {
    return (CommonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  static String? transportation(String? value) {
    return (CommonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  static String? businessHours(String? value) {
    return (CommonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  static String? regularHoliday(String? value) {
    return (CommonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  static String? memo(String? value) {
    return (CommonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  static String? tabelogUrl(String? value) {
    // TODO: URL形式チェック
    return null;
  }
}
