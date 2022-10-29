import 'package:cafe_note_mobile/pages/bottom_menu/_menu_content.dart';
import 'package:cafe_note_mobile/pages/cafes/cafes.dart';
import 'package:cafe_note_mobile/pages/signup/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return const MenuContent(content: CafesPage());
          case 1:
            return const MenuContent(content: SignupPage());
          default:
            return const MenuContent(content: CafesPage());
        }
      },
    );
  }
}
