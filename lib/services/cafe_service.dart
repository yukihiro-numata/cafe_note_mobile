import 'package:cafe_note_mobile/entities/cafe.dart';
import 'package:cafe_note_mobile/services/http_service.dart';

class CafeService {
  late HttpService _apiClient;

  CafeService() {
    _apiClient = HttpService<Cafe>();
  }

  Future<List<Cafe>> getList() async {
    final Map<String, dynamic> result = await _apiClient.getList("/cafes");

    final List<Cafe> res = [];
    result["data"].forEach((cafe) {
      res.add(Cafe.fromJson(cafe));
    });
    return res;
  }

  Future<Cafe> get(int id) async {
    final result = await _apiClient.get("/cafes/$id");
    return Cafe.fromJson(result["data"]);
  }
}
