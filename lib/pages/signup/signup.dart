import 'package:cafe_note_mobile/components/atoms/form_container.dart';
import 'package:cafe_note_mobile/components/atoms/form_label.dart';
import 'package:cafe_note_mobile/components/atoms/main_button.dart';
import 'package:cafe_note_mobile/controllers/signup_controller.dart';
import 'package:cafe_note_mobile/helpers/validators/signup_form_validator.dart';
import 'package:cafe_note_mobile/states/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _state = context.read<SignupState>();
    final _controller = context.read<SignupController>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: const Text('ユーザー登録')),
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
                  validator: SignupFormValidator.email,
                  onChanged: (value) => _controller.handleChangeInput(
                    key: SignupController.formKeyEmail,
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
                  validator: SignupFormValidator.password,
                  onChanged: (value) => _controller.handleChangeInput(
                    key: SignupController.formKeyPassword,
                    value: value,
                  ),
                ),
              ),
              MainButton(
                buttonLabel: 'ユーザー登録',
                onPressed: () => _controller.handleSubmitted(formKey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
