import 'package:cafe_note_mobile/configs/cafe_note_color.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonLabel;
  final VoidCallback onPressed;

  const MainButton._({
    Key? key,
    required this.buttonLabel,
    required this.buttonColor,
    required this.onPressed,
  }) : super(key: key);

  MainButton.primary({
    Key? key,
    required BuildContext context,
    required String buttonLabel,
    required VoidCallback onPressed,
  }) : this._(
          key: key,
          buttonLabel: buttonLabel,
          buttonColor: Theme.of(context).primaryColor,
          onPressed: onPressed,
        );

  const MainButton.sub({
    Key? key,
    required BuildContext context,
    required String buttonLabel,
    required VoidCallback onPressed,
  }) : this._(
          key: key,
          buttonLabel: buttonLabel,
          buttonColor: CafeNoteColor.sub,
          onPressed: onPressed,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor),
        ),
        child: Text(buttonLabel),
        onPressed: onPressed,
      ),
    );
  }
}
