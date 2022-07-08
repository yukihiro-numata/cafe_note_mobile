import 'package:cafe_note_mobile/states/cafes_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '_cafes_cell.dart';

class CafesPage extends StatelessWidget {
  const CafesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cafes = context.watch<CafesState>().cafes;
    // TODO: リストが0件だった場合の表示
    return Scaffold(
      appBar: AppBar(
        title: const Text("カフェ一覧"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: cafes.map((cafe) => CafesCell(cafe: cafe)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
