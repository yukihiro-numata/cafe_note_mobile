import 'package:cafe_note_mobile/components/atoms/form_container.dart';
import 'package:cafe_note_mobile/components/atoms/form_label.dart';
import 'package:cafe_note_mobile/components/atoms/main_button.dart';
import 'package:cafe_note_mobile/controllers/login_controller.dart';
import 'package:cafe_note_mobile/helpers/validators/login_form_validator.dart';
import 'package:cafe_note_mobile/states/login_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _state = context.read<LoginState>();
    final _controller = context.read<LoginController>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Form(
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
                  validator: LoginFormValidator.email,
                  onChanged: (value) => _controller.handleChangeInput(
                    key: LoginController.formKeyEmail,
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
                  validator: LoginFormValidator.password,
                  onChanged: (value) => _controller.handleChangeInput(
                    key: LoginController.formKeyPassword,
                    value: value,
                  ),
                ),
              ),
              MainButton(
                buttonLabel: 'ログイン',
                onPressed: () => _controller.handleSubmitted(formKey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
