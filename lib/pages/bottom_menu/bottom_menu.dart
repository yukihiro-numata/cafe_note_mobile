import 'package:cafe_note_mobile/controllers/bottom_menu_controller.dart';
import 'package:cafe_note_mobile/states/bottom_menu_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _state = context.watch<BottomMenuState>();
    final _controller = context.read<BottomMenuController>();

    return Scaffold(
      body: _controller.currentContent,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _state.currentIndex,
        onTap: _controller.handleMenuTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'マイページ',
          ),
        ],
      ),
    );
  }
}
