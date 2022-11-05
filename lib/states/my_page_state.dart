import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_page_state.freezed.dart';

@freezed
abstract class MyPageState with _$MyPageState {
  const factory MyPageState({
    String? email,
    String? password,
  }) = MyPageStateData;
}
