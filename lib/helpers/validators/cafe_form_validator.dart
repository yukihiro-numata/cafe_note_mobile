class CafeFormValidator {
  String? name(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? address(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? nearestStation(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? transportation(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? businessHours(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? regularHoliday(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? memo(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? tabelogUrl(String? value) {
    // TODO: URL形式チェック
    return null;
  }
}
