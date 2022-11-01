import 'package:cafe_note_mobile/states/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
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

  Future<void> handleSubmitted(GlobalKey<FormState> formKey) async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }
    formKey.currentState?.save();

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: state.email!,
        password: state.password!,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
