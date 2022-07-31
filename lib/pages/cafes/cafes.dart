import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:cafe_note_mobile/controllers/cafes_controller.dart';
import 'package:cafe_note_mobile/states/cafes_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '_cafes_cell.dart';

class CafesPage extends StatelessWidget {
  const CafesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<CafesController>().fetch();
    final isLoading =
        context.select<CafesState, bool>((state) => state.isLoading);
    final cafes = context.read<CafesState>().cafes;

    // TODO: リストが0件だった場合の表示
    return Scaffold(
      appBar: AppBar(
        title: const Text("カフェ一覧"),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: cafes.map((cafe) => CafesCell(cafe: cafe)).toList(),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(
          context,
          RouteConfig.createCafe,
        ),
      ),
    );
  }
}
