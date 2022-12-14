import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const User._();
  const factory User({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'firebase_uid') required String firebaseUid,
    @JsonKey(name: 'email') required String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
