import 'package:cafe_note_mobile/states/my_page_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class MyPageController extends StateNotifier<MyPageState> with LocatorMixin {
  MyPageController() : super(const MyPageState());

  static const String formKeyEmail = "email";
  static const String formKeyPassword = "password";

  void handleInputChanged({
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

  Future<void> handleSignUpPressed({
    required BuildContext context,
    required GlobalKey<FormState> formKey,
  }) async {
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
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      if (e.code == 'email-already-in-use') {
        _showAlertDialog(
          context: context,
          message: 'このメールアドレスは既に使われています。',
        );
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> handleLoginPressed({
    required BuildContext context,
    required GlobalKey<FormState> formKey,
  }) async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return;
    }
    formKey.currentState?.save();

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: state.email!,
        password: state.password!,
      );
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      switch (e.code) {
        case 'user-not-found':
          _showAlertDialog(
            context: context,
            message: 'ユーザーが見つかりません。新規登録してください。',
          );
          return;
        case 'wrong-password':
          _showAlertDialog(
            context: context,
            message: 'パスワードが間違っています。',
          );
          return;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _showAlertDialog({
    required BuildContext context,
    required String message,
  }) =>
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
}
