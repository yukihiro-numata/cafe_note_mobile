import 'package:cafe_note_mobile/components/atoms/form_container.dart';
import 'package:cafe_note_mobile/components/atoms/form_label.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Container(
                height: 44,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 16,
                ),
                child: ElevatedButton(
                  child: const Text('ユーザー登録'),
                  onPressed: () => print(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
