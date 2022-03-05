import 'package:cafe_note_mobile/pages/cafes/_cafes_cell.dart';
import 'package:flutter/material.dart';

class Cafes extends StatelessWidget {
  const Cafes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("カフェ一覧"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                CafesCell(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
