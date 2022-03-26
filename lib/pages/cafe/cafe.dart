import 'dart:convert';

import 'package:cafe_note_mobile/entities/cafe_detail.dart';
import 'package:cafe_note_mobile/pages/cafe/_cafe_cell.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CafePage extends StatefulWidget {
  final int id;

  const CafePage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<CafePage> createState() => _CafePageState();
}

class _CafePageState extends State<CafePage> {
  CafeDetail? _cafe;

  @override
  void initState() {
    super.initState();

    Future(() async {
      await _getCafe(widget.id);
    });
  }

  _getCafe(int id) async {
    final response =
        await http.get(Uri.parse("http://10.0.2.2:3000/cafes/$id"));
    // TODO: エラーハンドリング
    final json = jsonDecode(response.body);
    setState(() {
      _cafe = CafeDetail.fromJson(json["data"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("カフェ情報詳細画面"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CafeCell(
              title: "名前",
              text: _cafe?.name ?? "",
            ),
            CafeCell(
              title: "最寄り駅",
              text: _cafe?.nearestStation ?? "",
            ),
            CafeCell(
              title: "住所",
              text: _cafe?.address ?? "",
            ),
            CafeCell(
              title: "営業時間",
              text: _cafe?.businessHours ?? "",
            ),
            CafeCell(
              title: "wifi",
              text: (_cafe?.hasWifi ?? false) ? "有" : "無",
            ),
            CafeCell(
              title: "コンセント",
              text: (_cafe?.hasPowerSupply ?? false) ? "有" : "無",
            ),
            CafeCell(
              title: "喫煙",
              text: (_cafe?.canSmoking ?? false) ? "有" : "無",
            ),
            CafeCell(
              title: "メモ",
              text: _cafe?.memo ?? "",
            ),
            CafeCell(
              title: "食べログURL",
              text: _cafe?.tabelogUrl ?? "",
            ),
          ],
        ),
      ),
    );
  }
}
