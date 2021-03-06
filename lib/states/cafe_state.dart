import 'package:cafe_note_mobile/entities/cafe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cafe_state.freezed.dart';

@freezed
abstract class CafeState with _$CafeState {
  const factory CafeState({
    @Default(null) Cafe? cafe,
    @Default(false) bool isLoading,
  }) = CafeStateData;
}
