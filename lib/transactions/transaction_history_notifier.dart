import 'dart:async';

import 'package:logger/logger.dart';
import 'package:vite/core.dart';

import '../accounts/account.dart';
import '../util/safe_change_notifier.dart';

class TransactionHistoryNotifier extends SafeChangeNotifier {
  final Account account;
  final Token? token;
  final ViteClient client;
  final Logger log;
  final List<AccountBlock> history = [];
  final _accountHashes = <Hash>{};
  final _unconfirmedHashes = <Hash>{};
  bool _refreshingUnconfirmed = false;
  bool get hasUnconfirmed => _unconfirmedHashes.isNotEmpty;

  BigInt _lastSnapshotHeight = BigInt.zero;
  BigInt get lastSnapshotHeight => _lastSnapshotHeight;

  Hash? _lastHash;

  TransactionHistoryNotifier({
    required this.account,
    this.token,
    required this.client,
    required this.log,
  }) {
    loadMore();
  }

  bool get hasMore =>
      (!(history.isEmpty && loading == false) ||
          (history.isNotEmpty && history.last.height > BigInt.one)) &&
      !_loadedLess;

  bool _loading = false;
  bool get loading => _loading;
  bool _loadedLess = false;

  Future<void> loadMore([int count = 20]) async {
    if (_loading) {
      return;
    }
    _loading = true;
    try {
      final skipCount = (_lastHash != null ? 1 : 0);
      final blocks = await client.getAccountBlocks(
        account.address,
        accountBlockHash: _lastHash,
        token: token,
        count: count + skipCount,
      );
      if (blocks.length < count + skipCount) {
        _loadedLess = true;
      }

      for (final block in blocks) {
        if (block.firstSnapshotHash == null) {
          _unconfirmedHashes.add(block.hash);
        }
        updateSnapshotHeight(block);
      }
      if (blocks.isNotEmpty) {
        history.addAll(blocks.skip(skipCount));
        _accountHashes.addAll(blocks.map((e) => e.hash));
        _lastHash = blocks.last.hash;
      }

      notifyListeners();
    } catch (e) {
      log.e(e);
    } finally {
      _loading = false;
    }
  }

  Future<void> refresh([int count = 20]) async {
    if (_loading) {
      return;
    }
    _loading = true;
    try {
      final blocks = await client.getAccountBlocks(
        account.address,
        token: token,
        count: count,
      );
      if (history.isNotEmpty) {
        final last = blocks.last;
        history.removeWhere((element) => element.height >= last.height);
      }
      for (final block in blocks) {
        if (block.firstSnapshotHash == null) {
          _unconfirmedHashes.add(block.hash);
        }
        updateSnapshotHeight(block);
      }
      history.insertAll(0, blocks);
      _accountHashes.addAll(blocks.map((e) => e.hash));

      notifyListeners();
    } catch (e, st) {
      log.e('Failed to load history', e, st);
    } finally {
      _loading = false;
    }
  }

  void remove(Hash hash) {
    _unconfirmedHashes.remove(hash);
    if (!_accountHashes.contains(hash)) {
      return;
    }

    history.removeWhere((element) => element.hash == hash);
    _accountHashes.remove(hash);

    notifyListeners();
  }

  void update(AccountBlock block) {
    if (block.firstSnapshotHash == null ||
        !_accountHashes.contains(block.hash)) {
      return;
    }
    log.d('Updating ${block.hash}');

    final index = history.indexWhere((element) => element.hash == block.hash);
    history[index] = block;

    notifyListeners();
  }

  void refreshUnconfirmed() async {
    if (_refreshingUnconfirmed || _unconfirmedHashes.isEmpty) {
      return;
    }
    _refreshingUnconfirmed = true;

    try {
      final hash = _unconfirmedHashes.first;
      log.d('Fetching $hash');
      final block = await client.getAccountBlockByHash(hash);
      updateSnapshotHeight(block);
      update(block);
      if (block.firstSnapshotHash != null) {
        _unconfirmedHashes.remove(block.hash);
      }
    } catch (e, st) {
      log.e('Failed to update account block with missing snapshot hash', e, st);
    }

    _refreshingUnconfirmed = false;
  }

  void updateSnapshotHeight(AccountBlock block) {
    final snapshotHeight = block.firstSnapshotHeight ?? BigInt.zero;
    if (snapshotHeight > _lastSnapshotHeight) {
      _lastSnapshotHeight = snapshotHeight;
    }
  }

  void addUnconfirmedHash(Hash hash) => _unconfirmedHashes.add(hash);
}
