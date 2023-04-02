import 'dart:io';

import 'package:cafe_note_mobile/states/archive_cafe_state.dart';
import 'package:cafe_note_mobile/states/auth_state.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:state_notifier/state_notifier.dart';
import 'package:ulid/ulid.dart';

class ArchiveCafeController extends StateNotifier<ArchiveCafeState>
    with LocatorMixin {
  static const String formKeyMemo = 'memo';

  final int cafeId;
  final TextEditingController visitedDateFormController =
      TextEditingController();

  AuthState get _authState => read();

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

  void handleSubmitButtonPressed() async {
    final storageRef = FirebaseStorage.instance
        .ref("/cafes/$cafeId/users/${_authState.user?.id}");

    await Future.forEach(state.images, (i) async {
      final extension = p.extension(i.path);
      final fileName = Ulid().toString();
      final imageRef = storageRef.child(p.setExtension(fileName, extension));
      await imageRef.putFile(i);
    });
  }
}
