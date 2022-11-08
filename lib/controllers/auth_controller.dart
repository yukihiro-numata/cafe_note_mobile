import 'package:cafe_note_mobile/states/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';

class AuthController extends StateNotifier<AuthState> with LocatorMixin {
  static const errorCodeEmailAlreadyInUse = 'email-already-in-use';
  static const errorCodeUserNotFound = 'user-not-found';
  static const errorCodeWrongPassword = 'wrong-password';
  static const errorMsgEmailAlreadyInUse = 'このメールアドレスは既に使われています。';
  static const errorMsgUserNotFound = 'ユーザーが見つかりません。新規登録してください。';
  static const errorMsgWrongPassword = 'パスワードが間違っています。';
  static const errorMsgUnknown = 'エラーが発生しました、もう一度やり直してください。';
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  AuthController() : super(const AuthState(authenticated: false));

  Future<String?> signUp({
    required String email,
    required String password,
  }) async {
    try {
      // TODO: メール検証を行う（ref: https://qiita.com/go__gou/items/6f2ea9a73df5255b0f05）
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      state = state.copyWith(authenticated: true);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      return e.code == errorCodeEmailAlreadyInUse
          ? errorMsgEmailAlreadyInUse
          : errorMsgUnknown;
    }

    return null;
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      state = state.copyWith(authenticated: true);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());
      switch (e.code) {
        case errorCodeUserNotFound:
          return errorMsgUserNotFound;
        case errorCodeWrongPassword:
          return errorMsgWrongPassword;
        default:
          return errorMsgUnknown;
      }
    }

    return null;
  }
}