import 'dart:convert';

import 'package:cafe_note_mobile/entities/cafe.dart';
import 'package:cafe_note_mobile/pages/cafes/_cafes_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CafesPage extends StatefulWidget {
  const CafesPage({Key? key}) : super(key: key);

  @override
  State<CafesPage> createState() => _CafesPageState();
}

class _CafesPageState extends State<CafesPage> {
  final List<Cafe> _cafeList = [];

  @override
  void initState() {
    super.initState();

    Future(() async {
      await _getData();
    });
  }

  _getData() async {
    final rawData = await rootBundle.loadString("assets/json/cafe_list.json");
    final json = jsonDecode(rawData);
    setState(() {
      (json["cafe_list"] as Iterable).forEach((cafe) {
        _cafeList.add(Cafe.fromJson(cafe));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("カフェ一覧"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: _cafeList.map((cafe) => CafesCell(cafe: cafe)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
