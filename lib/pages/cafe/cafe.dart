import 'package:cafe_note_mobile/pages/cafe/_cafe_cell.dart';
import 'package:flutter/material.dart';

class Cafe extends StatelessWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("カフェ情報詳細画面"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CafeCell(
              title: "名前",
              text: "コメダ珈琲成増駅前店",
            ),
            CafeCell(
              title: "最寄り駅",
              text: "東武東上線成増駅",
            ),
            CafeCell(
              title: "住所",
              text: "東京都板橋区成増2-15-18 成増プライム2階",
            ),
            CafeCell(
              title: "営業時間",
              text: "7:00〜20:00",
            ),
            CafeCell(
              title: "wifi",
              text: "○",
            ),
            CafeCell(
              title: "コンセント",
              text: "△",
            ),
            CafeCell(
              title: "喫煙",
              text: "×",
            ),
            CafeCell(
              title: "メモ",
              text: "コンセントはあるけど狭い席か、コンセントはないけど広い席がある。",
            ),
            CafeCell(
              title: "食べログURL",
              text: "https://tabelog.com/tokyo/A1322/A132204/13185412/",
            ),
          ],
        ),
      ),
    );
  }
}
