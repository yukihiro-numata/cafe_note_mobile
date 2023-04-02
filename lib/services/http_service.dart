import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class HttpService {
  static const apiUrlScheme = "http";
  static const apiPort = "3000";
  late String baseUrl;

  HttpService() {
    baseUrl =
        "$apiUrlScheme://${Platform.isAndroid ? "10.0.2.2" : "localhost"}:$apiPort";
  }

  Future<Map<String, dynamic>> get(String path) async {
    final url = Uri.parse(baseUrl + path);
    final response = await http.get(url);
    // TODO: エラーハンドリング
    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> post(
      String path, Map<String, String?> body) async {
    final url = Uri.parse(baseUrl + path);
    final response = await http.post(url, body: body);
    if (response.statusCode != 201) {
      throw Exception();
    }
    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> getWithAuth({
    required String path,
    required String token,
  }) async {
    final headers = _createAuthHeader(token);
    final response = await http.get(
      Uri.parse(baseUrl + path),
      headers: headers,
    );
    if (response.statusCode != 200) {
      throw Exception();
    }

    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> postWithAuth({
    required String token,
    required String path,
    required Map<String, Object> body,
  }) async {
    final headers = _createAuthHeader(token);
    headers.addAll({'content-type': 'application/json'});

    final response = await http.post(
      Uri.parse(baseUrl + path),
      headers: headers,
      body: jsonEncode(body),
    );
    if (response.statusCode != 201) {
      throw Exception();
    }

    return jsonDecode(response.body);
  }

  Map<String, String> _createAuthHeader(String token) {
    return {HttpHeaders.authorizationHeader: 'Bearer $token'};
  }
}
