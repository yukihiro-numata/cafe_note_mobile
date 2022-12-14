import 'package:cafe_note_mobile/entities/user.dart';
import 'package:cafe_note_mobile/services/http_service.dart';

class UserAction {
  final HttpService _httpService = HttpService<User>();

  Future createUser({
    required String firebaseUid,
    required String email,
  }) async {
    final params = {
      'firebase_uid': firebaseUid,
      'email': email,
    };
    await _httpService.post('/users', params);
  }
}
