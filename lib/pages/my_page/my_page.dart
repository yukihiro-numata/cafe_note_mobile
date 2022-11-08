import 'package:cafe_note_mobile/components/atoms/form_container.dart';
import 'package:cafe_note_mobile/components/atoms/form_label.dart';
import 'package:cafe_note_mobile/components/atoms/main_button.dart';
import 'package:cafe_note_mobile/controllers/auth_controller.dart';
import 'package:cafe_note_mobile/controllers/my_page_controller.dart';
import 'package:cafe_note_mobile/helpers/validators/my_page_form_validator.dart';
import 'package:cafe_note_mobile/states/auth_state.dart';
import 'package:cafe_note_mobile/states/my_page_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _state = context.read<MyPageState>();
    final _controller = context.read<MyPageController>();
    final authController = context.read<AuthController>();
    final _authState = context.watch<AuthState>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: _authState.authenticated
          ? const Text('ログイン済みです')
          : Form(
              key: formKey,
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FormLabel(text: 'メールアドレス'),
                    FormContainer(
                      child: TextFormField(
                        initialValue: _state.email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        validator: MyPageFormValidator.email,
                        onChanged: (value) => _controller.handleInputChanged(
                          key: MyPageController.formKeyEmail,
                          value: value,
                        ),
                      ),
                    ),
                    const FormLabel(text: 'パスワード'),
                    FormContainer(
                      child: TextFormField(
                        initialValue: _state.password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        validator: MyPageFormValidator.password,
                        onChanged: (value) => _controller.handleInputChanged(
                          key: MyPageController.formKeyPassword,
                          value: value,
                        ),
                      ),
                    ),
                    MainButton.fromButtonType(
                      context: context,
                      buttonType: ButtonType.primary,
                      buttonLabel: '新規登録',
                      onPressed: () => _controller.handleSignUpPressed(
                        context: context,
                        authController: authController,
                        formKey: formKey,
                      ),
                    ),
                    MainButton.fromButtonType(
                      context: context,
                      buttonType: ButtonType.sub,
                      buttonLabel: 'ログイン',
                      onPressed: () => _controller.handleLoginPressed(
                        context: context,
                        authController: authController,
                        formKey: formKey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
