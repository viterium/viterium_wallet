import 'dart:async';
import 'dart:math';

import 'package:logger/logger.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';
import '../transactions/transaction_history_notifier.dart';

const _defaultTryDelta = Duration(seconds: 2);
const _maxTryDelta = Duration(seconds: 30);

class AutoreceiveService {
  final Account account;
  final Logger log;
  Address get address => account.address;

  late AccountService accountService;
  late AccountInfo unreceived;
  late TransactionHistoryNotifier txNotifier;

  bool _inProgress = false;
  bool _paused = false;
  bool _enabled = false;
  DateTime _lastTry = DateTime.now();
  Duration _nextTryDelta = _defaultTryDelta;

  Completer<void> _completer = Completer()..complete();

  AutoreceiveService({required this.account, required this.log});

  bool get inProgress => _inProgress;
  int get unreceivedCount => unreceived.blockCount;

  bool get allowProcessNext {
    final nextTry = _lastTry.add(_nextTryDelta);
    return DateTime.now().isAfter(nextTry);
  }

  void setEnabled(bool enabled) {
    _enabled = enabled;
  }

  void resumeAutoreceive() {
    _paused = false;
  }

  Future<void> pauseAutoreceive() async {
    _paused = true;
    return _completer.future;
  }

  Future<void> processNext(BigInt snapshotHeight) async {
    if (!_enabled ||
        _inProgress ||
        _paused ||
        unreceived.blockCount == 0 ||
        !allowProcessNext) {
      return;
    }

    final blocked = txNotifier.hasUnconfirmed ||
        snapshotHeight <= txNotifier.lastSnapshotHeight;
    if (blocked) {
      return;
    }

    _inProgress = true;
    _completer = Completer();
    try {
      _lastTry = DateTime.now();
      final blocks = await accountService.unreceivedBlocksForAddress(address);
      if (blocks.isNotEmpty) {
        final sendBlockHash = blocks.first.hash;
        final hash = await accountService.receiveTransaction(
          address: address,
          sendBlockHash: sendBlockHash,
        );

        txNotifier.addUnconfirmedHash(hash);
      }
      _nextTryDelta = _defaultTryDelta;
    } catch (e, st) {
      log.e('Failed to autoreceive transaction', e, st);
      _nextTryDelta = Duration(
        seconds: min(
          _maxTryDelta.inSeconds,
          (_nextTryDelta.inSeconds + 1) * 2,
        ),
      );
    }
    _inProgress = false;
    _completer.complete();
  }
}
