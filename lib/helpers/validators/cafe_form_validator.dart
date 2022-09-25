import 'package:cafe_note_mobile/helpers/validators/common_validator.dart';

class CafeFormValidator {
  static const postCodeDigit = 7;
  final _commonValidator = CommonValidator();

  String? name(String? value) {
    return _commonValidator.checkIsEmpty(value) ? "必須入力です" : null;
  }

  String? postCode(String? value) {
    if (_commonValidator.checkIsEmpty(value)) return "必須入力です";
    if (_commonValidator.checkIsInt(value!)) return "数値で入力してください";
    if (_commonValidator.checkDigit(
      value: value,
      digit: postCodeDigit,
    )) {
      return "7桁で入力してください";
    }

    return null;
  }

  String? prefecture(String? value) {
    return (_commonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  String? city(String? value) {
    return (_commonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  String? address(String? value) {
    return (_commonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  String? building(String? value) {
    return null;
  }

  String? nearestStation(String? value) {
    return (_commonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  String? transportation(String? value) {
    return (_commonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  String? businessHours(String? value) {
    return (_commonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  String? regularHoliday(String? value) {
    return (_commonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  String? memo(String? value) {
    return (_commonValidator.checkIsEmpty(value)) ? "必須入力です" : null;
  }

  String? tabelogUrl(String? value) {
    // TODO: URL形式チェック
    return null;
  }
}
