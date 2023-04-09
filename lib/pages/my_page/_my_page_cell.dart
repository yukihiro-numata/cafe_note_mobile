import 'package:flutter/material.dart';

class MyPageCell extends StatelessWidget {
  const MyPageCell({
    Key? key,
    required this.onTap,
    required this.text,
    this.icon = Icons.arrow_forward_ios,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16) +
            const EdgeInsets.only(bottom: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
