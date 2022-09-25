class CommonValidator {
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
}
