import 'package:email_validator/email_validator.dart';

class CommonValidator {
  static const validationMessageRequired = '必須入力です';
  static const validationMessageEmail = 'メールアドレスを入力してください';

  static bool checkIsEmpty(String? value) {
    return value?.isEmpty ?? true;
  }

  static bool checkIsInt(String value) {
    return int.tryParse(value) != null;
  }

  static bool checkDigit({
    required String value,
    required int digit,
  }) {
    return value.length == digit;
  }

  static bool checkIsEmail(String value) {
    return EmailValidator.validate(value);
  }
}
