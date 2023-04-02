import 'package:cafe_note_mobile/entities/cafe.dart';
import 'package:cafe_note_mobile/entities/cafe_detail.dart';
import 'package:cafe_note_mobile/services/http_service.dart';

class CafeAction {
  final HttpService _httpService = HttpService();

  Future<List<Cafe>> getList() async {
    final Map<String, dynamic> result = await _httpService.get("/cafes");
    return result["data"]
        .map((cafe) => Cafe.fromJson(cafe))
        .toList()
        .cast<Cafe>();
  }

  Future<CafeDetail> get(int id) async {
    final result = await _httpService.get("/cafes/$id");
    return CafeDetail.fromJson(result["data"]);
  }

  Future create({
    required String name,
    required String postCode,
    required String prefecture,
    required String city,
    required String address,
    required String building,
    required String nearestStation,
    required String transportation,
    required String businessHours,
    required String regularHoliday,
    required bool canTakeout,
    required bool hasParking,
    required bool hasWifi,
    required bool hasPowerSupply,
    required bool canSmoking,
    required String imgPath,
  }) async {
    final params = {
      "name": name,
      "post_code": postCode,
      "prefecture": prefecture,
      "city": city,
      "address": address,
      "building": building,
      "nearest_station": nearestStation,
      "transportation": transportation,
      "business_hours": businessHours,
      "regular_holiday": regularHoliday,
      "can_takeout": canTakeout.toString(),
      "has_parking": hasParking.toString(),
      "has_wifi": hasWifi.toString(),
      "has_power_supply": hasPowerSupply.toString(),
      "can_smoking": canSmoking.toString(),
      "img_path": imgPath,
    };
    await _httpService.post("/cafes", params);
  }

  Future<void> archive({
    required String token,
    required int cafeId,
    required double rating,
    required String visitedDate,
    List<String>? imagePaths,
    String? memo,
  }) async {
    final Map<String, Object> params = {
      'id': cafeId.toString(),
      'rating': rating.toInt().toString(),
      'visited_date': visitedDate,
    };
    if (memo != null) {
      params.addAll({'memo': memo});
    }
    if (imagePaths != null) {
      params.addAll({'image_paths': imagePaths});
    }

    await _httpService.postWithAuth(
      token: token,
      path: '/cafes/$cafeId/archive',
      body: params,
    );
  }
}
