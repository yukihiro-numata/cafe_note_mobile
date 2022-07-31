import 'package:cafe_note_mobile/services/cafe_service.dart';
import 'package:cafe_note_mobile/states/cafe_state.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class CafeController extends StateNotifier<CafeState> with LocatorMixin {
  CafeController() : super(const CafeState());

  final CafeService _service = CafeService();

  Future<void> fetch(int id) async {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      state = state.copyWith(isLoading: true);
    });

    final cafe = await _service.get(id);
    state = state.copyWith(cafe: cafe, isLoading: false);
  }
}
