import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService<T> {
  final _baseUrl = "http://10.0.2.2:3000";

  Future<Map<String, dynamic>> get(String path) async {
    final url = Uri.parse(_baseUrl + path);
    final response = await http.get(url);
    // TODO: エラーハンドリング
    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> post(
      String path, Map<String, String?> body) async {
    final url = Uri.parse(_baseUrl + path);
    final response = await http.post(url, body: body);
    // TODO: エラーハンドリング
    return jsonDecode(response.body);
  }
}
