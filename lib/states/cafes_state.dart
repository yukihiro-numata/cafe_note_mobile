import 'package:cafe_note_mobile/entities/cafe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cafes_state.freezed.dart';

@freezed
abstract class CafesState with _$CafesState {
  const factory CafesState({
    @Default(<Cafe>[]) List<Cafe> cafes,
  }) = CafesStateData;
}
