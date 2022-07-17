import 'package:cafe_note_mobile/entities/cafe.dart';
import 'package:cafe_note_mobile/services/http_service.dart';

class CafeService {
  late HttpService _apiClient;

  CafeService() {
    _apiClient = HttpService<Cafe>();
  }

  Future<List<Cafe>> getList() async {
    final Map<String, dynamic> result = await _apiClient.get("/cafes");
    return result["data"]
        .map((cafe) => Cafe.fromJson(cafe))
        .toList()
        .cast<Cafe>();
  }

  Future<Cafe> get(int id) async {
    final result = await _apiClient.get("/cafes/$id");
    return Cafe.fromJson(result["data"]);
  }

  Future create({
    required String name,
    required String address,
    required String nearestStation,
    required String transportation,
    required String businessHours,
    required String regularHoliday,
    required bool canTakeout,
    required bool hasParking,
    required bool hasWifi,
    required bool hasPowerSupply,
    required bool canSmoking,
    required String memo,
    required String imgPath,
    String? tabelogUrl,
  }) async {
    final params = {
      "name": name,
      "address": address,
      "nearest_station": nearestStation,
      "transportation": transportation,
      "business_hours": businessHours,
      "regular_holiday": regularHoliday,
      "can_takeout": canTakeout.toString(),
      "has_parking": hasParking.toString(),
      "has_wifi": hasWifi.toString(),
      "has_power_supply": hasPowerSupply.toString(),
      "can_smoking": canSmoking.toString(),
      "memo": memo,
      "img_path": imgPath,
      "tabelog_url": tabelogUrl,
    };
    await _apiClient.post("/cafes", params);
  }
}
