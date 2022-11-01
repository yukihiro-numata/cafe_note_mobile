import 'package:cafe_note_mobile/components/atoms/primary_button.dart';
import 'package:cafe_note_mobile/components/atoms/text_link.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            PrimaryButton(
              buttonLabel: '新規登録',
              onPressed: () => print(''),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
            ),
            TextLink(
              text: 'アカウント登録済みの場合はこちら',
              onTap: () => print(''),
            ),
          ],
        ),
      ),
    );
  }
}
