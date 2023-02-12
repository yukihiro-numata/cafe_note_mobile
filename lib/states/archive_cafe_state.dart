import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'archive_cafe_state.freezed.dart';

@freezed
abstract class ArchiveCafeState with _$ArchiveCafeState {
  const factory ArchiveCafeState({
    @Default(0) double rating,
    String? visitedDate,
    String? memo,
    @Default([]) List<File> images,
  }) = ArchiveCafeStateData;
}
