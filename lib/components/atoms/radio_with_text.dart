import 'package:flutter/material.dart';

class RadioWithText extends StatelessWidget {
  final String text;
  final bool value;
  final bool? groupValue;
  final ValueChanged<bool?> onChanged;

  const RadioWithText({
    Key? key,
    required this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
