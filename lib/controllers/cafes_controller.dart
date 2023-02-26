import 'package:cafe_note_mobile/services/cafe_service.dart';
import 'package:cafe_note_mobile/states/cafes_state.dart';
import 'package:state_notifier/state_notifier.dart';

class CafesController extends StateNotifier<CafesState> with LocatorMixin {
  CafesController() : super(const CafesState.loading());

  final CafeService _service = CafeService();

  @override
  Future<void> initState() async {
    super.initState();

    final cafes = await _service.getList();
    state = CafesState(cafes: cafes);
  }
}
