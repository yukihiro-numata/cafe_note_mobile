import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onPressed;

  const PrimaryButton({
    Key? key,
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
        child: Text(buttonLabel),
        onPressed: onPressed,
      ),
    );
  }
}
