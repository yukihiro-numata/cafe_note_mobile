class Cafe {
  final int id;
  final String name;
  final String address;
  final String nearestStation;
  final String transportation;
  final String businessHours;
  final String regularHoliday;
  final bool canTakeout;
  final bool hasParking;
  final bool hasWifi;
  final bool hasPowerSupply;
  final bool canSmoking;
  final String memo;
  final String tabelogUrl;

  Cafe({
    required this.id,
    required this.name,
    required this.address,
    required this.nearestStation,
    required this.transportation,
    required this.businessHours,
    required this.regularHoliday,
    required this.canTakeout,
    required this.hasParking,
    required this.hasWifi,
    required this.hasPowerSupply,
    required this.canSmoking,
    required this.memo,
    required this.tabelogUrl,
  });

  factory Cafe.fromJson(Map<String, dynamic> json) {
    return Cafe(
      id: json["id"] as int,
      name: json["name"] as String,
      address: json["address"] as String,
      nearestStation: json["nearest_station"] as String,
      transportation: json["transportation"] as String,
      businessHours: json["business_hours"] as String,
      regularHoliday: json["regular_holiday"] as String,
      canTakeout: json["can_takeout"] as bool,
      hasParking: json["has_parking"] as bool,
      hasWifi: json["has_wifi"] as bool,
      hasPowerSupply: json["has_power_supply"] as bool,
      canSmoking: json["can_smoking"] as bool,
      memo: json["memo"] as String,
      tabelogUrl: json["tabelog_url"] as String,
    );
  }
}
