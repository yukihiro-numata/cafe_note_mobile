import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:flutter/material.dart';

class MyPageController {
  void handleOnPressedSignUpButton(BuildContext context) {
    Navigator.pushNamed(
      context,
      RouteConfig.signup,
    );
  }
}
