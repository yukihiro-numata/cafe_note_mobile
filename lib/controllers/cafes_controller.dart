import 'package:cafe_note_mobile/actions/cafe_action.dart';
import 'package:cafe_note_mobile/states/cafes_state.dart';
import 'package:state_notifier/state_notifier.dart';

class CafesController extends StateNotifier<CafesState> with LocatorMixin {
  CafesController() : super(const CafesState.loading());

  final CafeAction _action = CafeAction();

  @override
  Future<void> initState() async {
    super.initState();

    final cafes = await _action.getList();
    state = CafesState(cafes: cafes);
  }
}
