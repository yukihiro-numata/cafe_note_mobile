import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:cafe_note_mobile/controllers/cafe_controller.dart';
import 'package:cafe_note_mobile/pages/cafe/_cafe_cell.dart';
import 'package:cafe_note_mobile/states/cafe_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CafePage extends StatelessWidget {
  const CafePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as CafeRouteArgs;
    context.read<CafeController>().fetch(args.id);
    final isLoading =
        context.select<CafeState, bool>((state) => state.isLoading);
    final cafe = context.read<CafeState>().cafe;

    return Scaffold(
      appBar: AppBar(
        title: const Text("カフェ情報詳細画面"),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CafeCell(
                    title: "名前",
                    text: cafe?.name ?? "",
                  ),
                  CafeCell(
                    title: "最寄り駅",
                    text: cafe?.nearestStation ?? "",
                  ),
                  CafeCell(
                    title: "営業時間",
                    text: cafe?.businessHours ?? "",
                  ),
                  CafeCell(
                    title: "wifi",
                    text: (cafe?.hasWifi ?? false) ? "有" : "無",
                  ),
                  CafeCell(
                    title: "コンセント",
                    text: (cafe?.hasPowerSupply ?? false) ? "有" : "無",
                  ),
                  CafeCell(
                    title: "喫煙",
                    text: (cafe?.canSmoking ?? false) ? "有" : "無",
                  ),
                  CafeCell(
                    title: "郵便番号",
                    text: cafe?.address.postCode ?? "",
                  ),
                  CafeCell(
                    title: "都道府県",
                    text: cafe?.address.prefecture ?? "",
                  ),
                  CafeCell(
                    title: "市区町村",
                    text: cafe?.address.city ?? "",
                  ),
                  CafeCell(
                    title: "番地",
                    text: cafe?.address.address ?? "",
                  ),
                  CafeCell(
                    title: "建物名",
                    text: cafe?.address.building ?? "",
                  ),
                ],
              ),
            ),
    );
  }
}
