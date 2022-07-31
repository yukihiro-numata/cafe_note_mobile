import 'package:cafe_note_mobile/controllers/cafe_controller.dart';
import 'package:cafe_note_mobile/entities/cafe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CafesCell extends StatelessWidget {
  final Cafe cafe;
  const CafesCell({
    Key? key,
    required this.cafe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await context.read<CafeController>().fetch(cafe.id);
        Navigator.pushNamed(context, '/cafes/detail');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16) +
            const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO: svgアイコンでなく画像を表示できるようになったらImageウィジェットに置き換える
            // Image(
            //   width: 100,
            //   height: 100,
            //   image: AssetImage(cafe.imgPath),
            // ),
            SvgPicture.asset(
              cafe.imgPath,
              width: 100,
              height: 100,
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
