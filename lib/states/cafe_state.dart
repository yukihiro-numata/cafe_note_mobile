import 'package:cafe_note_mobile/entities/cafe_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cafe_state.freezed.dart';

@freezed
abstract class CafeState with _$CafeState {
  const factory CafeState({
    @Default(null) CafeDetail? cafe,
    @Default(false) bool isLoading,
  }) = CafeStateData;
}
