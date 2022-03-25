import 'package:cafe_note_mobile/pages/cafe/cafe.dart';
import 'package:flutter/material.dart';

class CafesCell extends StatelessWidget {
  const CafesCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CafePage(id: 1),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 16) +
            const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              width: 100,
              height: 100,
              image: AssetImage("assets/komeda_logo.png"),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "コメダ珈琲成増駅前店",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "東京都板橋区成増2-15-18 成増プライム2階",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
