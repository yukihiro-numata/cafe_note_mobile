import 'package:cafe_note_mobile/helpers/validators/common_validator.dart';

class MyPageFormValidator {
  // 英大文字・小文字・数字を含む8〜24文字
  static const passwordPattern =
      r'^((?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]))([a-zA-Z0-9]){8,24}$';
  static const validationMessagePassword = 'パスワードの形式が不正です';

  static String? email(String? value) {
    if (CommonValidator.checkIsEmpty(value)) {
      return CommonValidator.validationMessageRequired;
    }
    if (!CommonValidator.checkIsEmail(value!)) {
      return CommonValidator.validationMessageEmail;
    }
    return null;
  }

  static String? password(String? value) {
    if (CommonValidator.checkIsEmpty(value)) {
      return CommonValidator.validationMessageRequired;
    }
    if (!RegExp(passwordPattern).hasMatch(value!)) {
      return validationMessagePassword;
    }
    return null;
  }
}
