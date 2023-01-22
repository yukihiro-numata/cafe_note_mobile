import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? Function(String?) validator;
  final Function(String) onChanged;
  final int maxLines;

  const CustomTextFormField({
    Key? key,
    required this.validator,
    required this.onChanged,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        counterText: '',
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
