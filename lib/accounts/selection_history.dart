import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class SelectionHistory<T> {
  final T _main;
  final List<T?> _recents = [];
  final int _max;

  List<T> get recents => _recents.toIList().removeNulls().cast<T>().toList();

  T get selected => _recents.last ?? _main;
  T? get recentLast => _max <= 1 ? null : _recents.reversed.skip(1).first;
  T? get recentSecondLast => _max <= 2 ? null : _recents.reversed.skip(2).first;

  SelectionHistory(
    this._main, [
    List<T> recents = const [],
    this._max = 3,
  ]) : assert(_max > 0) {
    _recents.add(_main);
    for (final recent in recents) {
      _recents.remove(recent);
      _recents.add(recent);
    }
    _checkLength();
  }

  void select(T selection) {
    _recents.remove(selection);
    _recents.add(selection);
    _checkLength();
  }

  void remove(T selection) {
    // skip main index
    if (selection == _main) {
      return;
    }
    _recents.remove(selection);
    _checkLength();
  }

  void _checkLength() {
    final count = _recents.length - _max;
    if (count > 0) {
      _recents.removeRange(0, count);
    } else if (count < 0) {
      _recents.insertAll(0, List.filled(-count, null));
    }
  }
}
