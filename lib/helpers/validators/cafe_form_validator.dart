class CafeFormValidator {
  String? name(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? postCode(String? value) {
    if (value?.isEmpty ?? true) return "必須入力です";
    if (int.tryParse(value!) == null) return "数値で入力してください";
    if (value!.length != 7) return "7桁で入力してください";
    return null;
  }

  String? prefecture(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? city(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? address(String? value) {
    return (value?.isEmpty ?? true) ? "必須入力です" : null;
  }

  String? building(String? value) {
    return null;
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
