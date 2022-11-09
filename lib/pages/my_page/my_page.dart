import 'package:cafe_note_mobile/pages/my_page/_my_page_authenticated.dart';
import 'package:cafe_note_mobile/pages/my_page/_my_page_not_authenticated.dart';
import 'package:cafe_note_mobile/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authState = context.watch<AuthState>();

    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: _authState.authenticated
          ? const MyPageAuthenticated()
          : const MyPageNotAuthenticated(),
    );
  }
}
