import 'package:cafe_note_mobile/states/signup_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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

  Future<void> handleSubmitted(GlobalKey<FormState> formKey) async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }
    formKey.currentState?.save();

    try {
      // TODO: メール検証を行う（ref: https://qiita.com/go__gou/items/6f2ea9a73df5255b0f05）
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: state.email!,
        password: state.password!,
      );
    } catch (e) {
      print(e);
    }
  }
}
