import 'dart:io';

import 'package:cafe_note_mobile/actions/cafe_action.dart';
import 'package:cafe_note_mobile/controllers/auth_controller.dart';
import 'package:cafe_note_mobile/states/archive_cafe_state.dart';
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
  final CafeAction action = CafeAction();

  AuthController get _authController => read();

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

  // TODO: 処理中にローディングを表示する
  // 処理に失敗したらダイアログを表示する
  // 上記をなるべく汎用化した形で実装したい
  void handleSubmitButtonPressed(GlobalKey<FormState> formKey) async {
    if ((!(formKey.currentState?.validate() ?? false)) ||
        state.visitedDate == null) {
      return;
    }
    formKey.currentState?.save();

    try {
      List<String>? imagePaths;
      if (state.images.isNotEmpty) {
        imagePaths = await _uploadImagesToStorage();
      }

      final token = await _authController.getToken();
      if (token == null) {
        throw Exception('Something went wrong about authentication');
      }

      await action.archive(
        token: token,
        cafeId: cafeId,
        rating: state.rating,
        memo: state.memo,
        visitedDate: state.visitedDate!,
        imagePaths: imagePaths,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<String>> _uploadImagesToStorage() async {
    final storageRef = FirebaseStorage.instance
        .ref("/cafes/$cafeId/users/${_authController.state.user?.id}");

    final List<String> imagePaths = [];
    await Future.forEach(state.images, (i) async {
      final extension = p.extension(i.path);
      final fileName = Ulid().toString();
      final imageRef = storageRef.child(p.setExtension(fileName, extension));
      await imageRef.putFile(i);
      imagePaths.add(imageRef.fullPath);
    });

    return imagePaths;
  }
}
