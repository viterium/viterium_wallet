import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:vite/core.dart';

import '../accounts/account.dart';

class TransactionHistoryNotifier extends ChangeNotifier {
  final Account account;
  final Token? token;
  final ViteClient client;
  final Logger log;
  final List<AccountBlock> history = [];
  final _accountHashes = <Hash>{};
  final _unconfirmableHashes = <Hash>{};
  bool _refreshingUnconfirmed = false;

  Hash? lastHash;

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
          (history.last.height > BigInt.one)) &&
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
      final skipCount = (lastHash != null ? 1 : 0);
      final blocks = await client.getAccountBlocks(
        account.address,
        accountBlockHash: lastHash,
        token: token,
        count: count + skipCount,
      );
      if (blocks.length < count + skipCount) {
        _loadedLess = true;
      }

      for (final block in blocks) {
        if (block.firstSnapshotHash == null) {
          _unconfirmableHashes.add(block.hash);
        }
      }
      if (blocks.isNotEmpty) {
        history.addAll(blocks.skip(skipCount));
        _accountHashes.addAll(blocks.map((e) => e.hash));
        lastHash = blocks.last.hash;
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
          _unconfirmableHashes.add(block.hash);
        }
      }
      history.insertAll(0, blocks);
      _accountHashes.addAll(blocks.map((e) => e.hash));
      notifyListeners();
    } catch (e) {
      log.e(e);
    } finally {
      _loading = false;
    }
  }

  void remove(Hash hash) {
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
    _unconfirmableHashes.remove(block.hash);
    notifyListeners();
  }

  void refreshUnconfirmed() async {
    if (_refreshingUnconfirmed || _unconfirmableHashes.isEmpty) {
      return;
    }
    _refreshingUnconfirmed = true;

    try {
      final hash = _unconfirmableHashes.first;
      log.d('Fetching $hash');
      final block = await client.getAccountBlockByHash(hash);
      update(block);
    } catch (e, st) {
      log.e('Failed to update account block with missing snapshot hash', e, st);
    }

    _refreshingUnconfirmed = false;
  }
}
