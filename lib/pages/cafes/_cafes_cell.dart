import 'package:cafe_note_mobile/entities/cafe.dart';
import 'package:cafe_note_mobile/pages/cafe/cafe.dart';
import 'package:flutter/material.dart';

class CafesCell extends StatelessWidget {
  final Cafe cafe;
  const CafesCell({
    Key? key,
    required this.cafe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CafePage(id: cafe.id),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 16) +
            const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              width: 100,
              height: 100,
              image: AssetImage(cafe.imgPath),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cafe.name,
                      softWrap: true,
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      cafe.address,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
