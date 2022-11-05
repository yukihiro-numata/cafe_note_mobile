import 'package:flutter/material.dart';

class CafeNoteColor {
  static const primary = Color(0xFF795548); // with white text
  static const primaryDark = Color(0xFF4b2c20); // with black text
  static const primaryLight = Color(0xFFa98274); // with white text
  static const secondary = Color(0xFFff8a65); // with black text
  static const secondaryDark = Color(0xFFc75b39); // with black text
  static const secondaryLight = Color(0xFFffbb93); // with black text

  static const background = Color(0xFFeeeeee);

  ThemeData get theme => ThemeData.from(
        colorScheme: const ColorScheme.light(
          primary: CafeNoteColor.primary,
          secondary: CafeNoteColor.secondary,
          background: CafeNoteColor.background,
        ),
      );
}
