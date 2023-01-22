import 'package:cafe_note_mobile/states/archive_cafe_state.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class ArchiveCafeController extends StateNotifier<ArchiveCafeState>
    with LocatorMixin {
  static const String formKeyMemo = 'memo';

  final TextEditingController visitedDateFormController =
      TextEditingController();

  ArchiveCafeController() : super(const ArchiveCafeState());

  void handleVisitedDateChanged(String value) {
    state = state.copyWith(visitedDate: value);
  }

  void handleRatingChanged(double value) {
    state = state.copyWith(rating: value);
  }

  void handleStringInputChanged({
    required String key,
    required String? value,
  }) {
    switch (key) {
      case formKeyMemo:
        state = state.copyWith(memo: value);
        break;
      default:
        assert(false, 'argument error');
    }
  }

  void handleSubmitButtonPressed() {
    print(state);
  }
}
