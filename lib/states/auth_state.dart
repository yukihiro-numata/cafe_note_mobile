import 'package:cafe_note_mobile/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required bool authenticated,
    @Default(null) auth.User? firebaseUser,
    @Default(null) User? user,
  }) = AuthStateData;
}
