import 'package:flutter/material.dart';

class CafeCell extends StatelessWidget {
  final String title;
  final String text;

  const CafeCell({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            thickness: 0.1,
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Text(title),
          ),
          Text(text),
        ],
      ),
    );
  }
}
