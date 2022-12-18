import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_menu_state.freezed.dart';

@freezed
abstract class BottomMenuState with _$BottomMenuState {
  const factory BottomMenuState({
    required int currentIndex,
  }) = BottomMenuStateData;
}
