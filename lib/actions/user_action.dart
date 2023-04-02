import 'package:cafe_note_mobile/entities/user.dart';
import 'package:cafe_note_mobile/services/http_service.dart';

class UserAction {
  final HttpService _httpService = HttpService();

  Future<void> createUser({
    required String firebaseUid,
    required String email,
  }) async {
    final params = {
      'firebase_uid': firebaseUid,
      'email': email,
    };
    await _httpService.post('/users', params);
  }

  Future<User> getUser(String token) async {
    final result = await _httpService.getWithAuth(
      path: '/users',
      token: token,
    );
    if (result['data'] == null) {
      throw Exception();
    }

    return User.fromJson(result['data']);
  }
}
