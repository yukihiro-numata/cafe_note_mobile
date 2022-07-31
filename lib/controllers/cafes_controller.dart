import 'package:cafe_note_mobile/services/cafe_service.dart';
import 'package:cafe_note_mobile/states/cafes_state.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class CafesController extends StateNotifier<CafesState> with LocatorMixin {
  CafesController() : super(const CafesState());

  final CafeService _service = CafeService();

  Future<void> fetch() async {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      state = state.copyWith(isLoading: true);
    });

    final cafes = await _service.getList();
    state = state.copyWith(
      cafes: cafes,
      isLoading: false,
    );
  }
}
