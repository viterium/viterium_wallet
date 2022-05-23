import '../database/boxes.dart';
import 'selection_history.dart';

class AccountSelection {
  final GenericBox _box;
  final String _key;

  const AccountSelection({
    required GenericBox box,
    required String key,
  })  : _box = box,
        _key = key;

  SelectionHistory<int> get([int mainIndex = 0, int max = 3]) {
    final recents = _box.getList<int>(_key);
    return SelectionHistory(mainIndex, recents, max);
  }

  Future<void> set(SelectionHistory<int> selection) =>
      _box.setList(_key, selection.recents);
}
