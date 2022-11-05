import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onPressed;

  const MainButton({
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
        // style: ButtonStyle(
        //   backgroundColor:
        //       MaterialStatePropertyAll(Theme.of(context).primaryColor),
        // ),
        child: Text(buttonLabel),
        onPressed: onPressed,
      ),
    );
  }
}
