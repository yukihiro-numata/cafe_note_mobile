import 'package:cafe_note_mobile/states/login_state.dart';
import 'package:state_notifier/state_notifier.dart';

class LoginController extends StateNotifier<LoginState> with LocatorMixin {
  LoginController() : super(const LoginState());

  static const String formKeyEmail = "email";
  static const String formKeyPassword = "password";

  void handleChangeInput({
    required String key,
    required String? value,
  }) {
    switch (key) {
      case formKeyEmail:
        state = state.copyWith(email: value);
        break;
      case formKeyPassword:
        state = state.copyWith(password: value);
        break;
      default:
        assert(false, 'argument error');
    }
  }
}
