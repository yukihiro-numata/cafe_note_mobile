class CommonValidator {
  bool checkIsEmpty(String? value) {
    return value?.isEmpty ?? true;
  }

  bool checkIsInt(String value) {
    return int.tryParse(value) != null;
  }

  bool checkDigit({
    required String value,
    required int digit,
  }) {
    return value.length == digit;
  }
}
