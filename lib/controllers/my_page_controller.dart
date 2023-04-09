import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:cafe_note_mobile/controllers/auth_controller.dart';
import 'package:cafe_note_mobile/states/my_page_state.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class MyPageController extends StateNotifier<MyPageState> with LocatorMixin {
  static const String formKeyEmail = "email";
  static const String formKeyPassword = "password";

  AuthController get _authController => read();

  MyPageController() : super(const MyPageState());

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

    final result = await _authController.signUp(
      email: state.email!,
      password: state.password!,
    );
    if (result != null) {
      _showAlertDialog(
        context: context,
        message: result,
      );
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

    final result = await _authController.login(
      email: state.email!,
      password: state.password!,
    );
    if (result != null) {
      _showAlertDialog(
        context: context,
        message: result,
      );
    }
  }

  Future<void> handleLogoutPressed() async {
    await _authController.logout();
  }

  Future<void> onTapToCafeArchives(BuildContext context) async {
    Navigator.pushNamed(
      context,
      RouteConfig.cafeArchives,
    );
  }
}
