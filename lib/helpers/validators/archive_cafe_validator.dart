import 'common_validator.dart';

class ArchiveCafeValidator {
  static const memoMaxLength = 1000;

  static String? memo(String? value) {
    if (CommonValidator.checkDigit(value: value!, digit: memoMaxLength)) {
      return CommonValidator.validationMessageMaxLength(memoMaxLength);
    }

    return null;
  }
}
