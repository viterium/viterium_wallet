import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'unreceived_provider.dart';

const _defaultTryDelta = Duration(seconds: 2);
const _maxTryDelta = Duration(seconds: 30);

class AutoreceiveNotifier extends ChangeNotifier {
  final Reader read;
  final Address address;

  late AccountInfo _unreceived = AccountInfo(address: address, blockCount: 0);
  bool _inProgress = false;
  bool _paused = false;
  DateTime _lastTry = DateTime.now();
  Duration _nextTryDelta = _defaultTryDelta;

  Completer<void> _completer = Completer()..complete();

  AutoreceiveNotifier(this.read, this.address);

  bool get inProgress => _inProgress;
  int get unreceivedCount => _unreceived.blockCount;

  bool get allowProcessNext {
    final nextTry = _lastTry.add(_nextTryDelta);
    return DateTime.now().isAfter(nextTry);
  }

  void resumeAutoreceive() {
    _paused = false;
  }

  Future<void> pauseAutoreceive() async {
    _paused = true;
    return _completer.future;
  }

  Future<void> processNext() async {
    final unreceived = read(unreceivedProvider(address));
    if (_inProgress ||
        _paused ||
        unreceived.blockCount == 0 ||
        !allowProcessNext) {
      return;
    }

    _inProgress = true;
    _completer = Completer();
    try {
      _lastTry = DateTime.now();
      final service = read(accountServiceProvider);
      final blocks = await service.unreceivedBlocksForAddress(address);
      if (blocks.isNotEmpty) {
        final hash = blocks.first.hash;
        await service.receiveTransaction(
          address: address,
          sendBlockHash: hash,
        );
      }
      _nextTryDelta = _defaultTryDelta;
    } catch (e, st) {
      read(loggerProvider).e('Failed to autoreceive transaction', e, st);
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
