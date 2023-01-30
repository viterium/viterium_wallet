import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../accounts/account.dart';
import '../app_providers.dart';
import '../transactions/transaction_history_notifier.dart';
import '../transactions/unreceived_providers.dart';
import 'autoreceive_service.dart';

final autoreceiveServiceProvider =
    Provider.autoDispose.family<AutoreceiveService, Account>((ref, account) {
  final log = ref.watch(loggerProvider);
  log.i('Autoreceive service for ${account.address}');

  final service = AutoreceiveService(
    account: account,
    log: log,
  );
  bool disposed = false;

  ref.listen<AsyncValue<SnapshotBlockMessage>>(snapshotTickerProvider,
      (_, message) {
    final snapshotHeight = message.asData?.value.height;
    if (snapshotHeight == null) {
      return;
    }
    Future.delayed(Duration.zero, () {
      if (disposed) {
        return;
      }
      service.processNext(snapshotHeight);
    });
  });

  ref.listen<AccountService>(accountServiceProvider, (_, next) {
    service.accountService = next;
  }, fireImmediately: true);

  ref.listen<AccountInfo>(unreceivedProvider(account.address), (_, next) {
    service.unreceived = next;
  }, fireImmediately: true);

  ref.listen<TransactionHistoryNotifier>(txHistoryForAccountProvider(account),
      (_, next) {
    service.txNotifier = next;
  }, fireImmediately: true);

  ref.listen(autoReceiveEnabledProvider, (_, enabled) {
    service.setEnabled(enabled);
  }, fireImmediately: true);

  ref.onDispose(() {
    log.d('Autoreceive disposed');
    disposed = true;
  });

  return service;
});
