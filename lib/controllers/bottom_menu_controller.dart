import 'package:cafe_note_mobile/pages/cafes/cafes.dart';
import 'package:cafe_note_mobile/pages/my_page/my_page.dart';
import 'package:cafe_note_mobile/states/bottom_menu_state.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class BottomMenuController extends StateNotifier<BottomMenuState>
    with LocatorMixin {
  BottomMenuController() : super(const BottomMenuState(currentIndex: 0));

  static const menuContent = [
    CafesPage(),
    MyPage(),
  ];

  Widget get currentContent => menuContent[state.currentIndex];

  void handleMenuTapped(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
