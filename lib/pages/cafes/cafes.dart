import 'package:cafe_note_mobile/entities/cafe.dart';
import 'package:cafe_note_mobile/pages/cafes/_cafes_cell.dart';
import 'package:cafe_note_mobile/services/cafe_service.dart';
import 'package:flutter/material.dart';

class CafesPage extends StatefulWidget {
  const CafesPage({Key? key}) : super(key: key);

  @override
  State<CafesPage> createState() => _CafesPageState();
}

class _CafesPageState extends State<CafesPage> {
  List<Cafe> _cafeList = [];
  final CafeService _service = CafeService();

  @override
  void initState() {
    super.initState();

    Future(() async {
      await _fetchData();
    });
  }

  _fetchData() async {
    final data = await _service.getList();
    setState(() {
      _cafeList = data;
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
