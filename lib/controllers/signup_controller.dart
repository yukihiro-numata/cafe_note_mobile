import 'package:cafe_note_mobile/states/signup_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:state_notifier/state_notifier.dart';

class SignupController extends StateNotifier<SignupState> with LocatorMixin {
  SignupController() : super(const SignupState());

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

  Future<void> handleSubmitted() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: state.email!,
        password: state.password!,
      );
    } catch (e) {
      print(e);
    }
  }
}
