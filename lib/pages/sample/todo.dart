import 'package:flutter/foundation.dart'; // *.freezed.dartで必要なのでimportしておく
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String title,
    @Default(false) bool completed,
  }) = TodoData;
}
