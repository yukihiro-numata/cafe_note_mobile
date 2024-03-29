import 'package:cafe_note_mobile/actions/cafe_action.dart';
import 'package:cafe_note_mobile/configs/route_config.dart';
import 'package:cafe_note_mobile/states/cafe_state.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class CafeController extends StateNotifier<CafeState> with LocatorMixin {
  final int cafeId;
  final CafeAction _action = CafeAction();

  CafeController({required this.cafeId}) : super(const CafeState.loading());

  @override
  Future<void> initState() async {
    super.initState();

    final cafe = await _action.get(cafeId);
    state = CafeState(cafe: cafe);
  }

  void handleArchiveCafePressed(BuildContext context) {
    Navigator.pushNamed(
      context,
      RouteConfig.archiveCafe,
      arguments: ArchiveCafeRouteArgs(cafeId: cafeId),
    );
  }
}
