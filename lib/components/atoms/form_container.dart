import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  final Widget child;

  const FormContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: child,
    );
  }
}
