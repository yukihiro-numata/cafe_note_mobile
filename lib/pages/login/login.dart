import 'package:cafe_note_mobile/components/atoms/form_container.dart';
import 'package:cafe_note_mobile/components/atoms/form_label.dart';
import 'package:cafe_note_mobile/components/atoms/primary_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Form(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FormLabel(text: 'メールアドレス'),
              FormContainer(
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const FormLabel(text: 'パスワード'),
              FormContainer(
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              PrimaryButton(
                buttonLabel: 'ログイン',
                onPressed: () => print(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
