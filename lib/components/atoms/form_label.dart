import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  final String text;

  const FormLabel({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Text(text),
    );
  }
}
