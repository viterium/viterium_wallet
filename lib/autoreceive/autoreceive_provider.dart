import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'autoreceive_notifier.dart';
import 'unreceived_provider.dart';

final autoreceiveStateProvider = ChangeNotifierProvider.autoDispose
    .family<AutoreceiveNotifier, Address>((ref, address) {
  final log = ref.read(loggerProvider);
  log.i('Autoreceive state notifier $address');

  final notifier = AutoreceiveNotifier(ref.read, address);
  bool disposed = false;

  ref.listen<AsyncValue<RpcSnapshotBlockMessage>>(snapshotTickerProvider,
      (_, __) {
    Future.delayed(Duration(milliseconds: 50), () {
      if (disposed) {
        return;
      }
      notifier.processNext();
    });
  });

  ref.onDispose(() {
    disposed = true;
  });

  return notifier;
}, dependencies: [
  unreceivedProvider,
]);
