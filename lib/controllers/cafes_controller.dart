import 'package:cafe_note_mobile/services/cafe_service.dart';
import 'package:cafe_note_mobile/states/cafes_state.dart';
import 'package:state_notifier/state_notifier.dart';

class CafesController extends StateNotifier<CafesState> with LocatorMixin {
  CafesController() : super(const CafesState());

  final CafeService _service = CafeService();

  Future<void> fetch() async {
    final cafes = await _service.getList();
    state = state.copyWith(cafes: cafes);
  }
}
