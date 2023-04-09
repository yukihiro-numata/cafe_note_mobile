import 'package:cafe_note_mobile/components/atoms/main_button.dart';
import 'package:cafe_note_mobile/controllers/my_page_controller.dart';
import 'package:cafe_note_mobile/pages/my_page/_my_page_cell.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyPageAuthenticated extends StatelessWidget {
  const MyPageAuthenticated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = context.read<MyPageController>();

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16),
        ),
        MyPageCell(
          onTap: () => _controller.onTapToCafeArchives(context),
          text: '訪問履歴',
        ),
        MainButton.primary(
          context: context,
          buttonLabel: 'ログアウト',
          onPressed: _controller.handleLogoutPressed,
        ),
      ],
    );
  }
}
