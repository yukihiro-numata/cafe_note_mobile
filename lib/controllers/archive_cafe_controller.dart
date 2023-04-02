import 'dart:io';

import 'package:cafe_note_mobile/states/archive_cafe_state.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:state_notifier/state_notifier.dart';

class ArchiveCafeController extends StateNotifier<ArchiveCafeState>
    with LocatorMixin {
  static const String formKeyMemo = 'memo';

  final int cafeId;
  final TextEditingController visitedDateFormController =
      TextEditingController();

  ArchiveCafeController({required this.cafeId})
      : super(const ArchiveCafeState());

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

  Future<void> handleImageFormPressed(List<XFile> imageFiles) async {
    final currentState = state;
    final images = currentState.images.toList();
    for (var f in imageFiles) {
      images.add(File(f.path));
    }
    state = currentState.copyWith(images: images);
  }

  void handleSubmitButtonPressed() {
    print(state);
  }
}
