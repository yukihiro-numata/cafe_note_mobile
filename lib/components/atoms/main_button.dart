import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  sub,
}

class MainButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonLabel;
  final VoidCallback onPressed;

  const MainButton({
    Key? key,
    required this.buttonColor,
    required this.buttonLabel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
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

  factory MainButton.fromButtonType({
    required BuildContext context,
    required ButtonType buttonType,
    required String buttonLabel,
    required VoidCallback onPressed,
  }) {
    Color buttonColor;
    switch (buttonType) {
      case ButtonType.primary:
        buttonColor = Theme.of(context).primaryColor;
        break;
      case ButtonType.sub:
        buttonColor = Theme.of(context).backgroundColor;
        break;
      default:
        buttonColor = Theme.of(context).primaryColor;
        break;
    }
    return MainButton(
      buttonColor: buttonColor,
      buttonLabel: buttonLabel,
      onPressed: onPressed,
    );
  }
}
