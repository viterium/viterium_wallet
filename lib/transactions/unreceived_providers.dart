import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';

final _unreceivedCacheProvider =
    StateProvider.family<AccountInfo, Address>((ref, address) {
  return AccountInfo(address: address, blockCount: 0);
});

final unreceivedRemoteProvider = FutureProvider.autoDispose
    .family<AccountInfo, Address>((ref, address) async {
  final message = ref.watch(unreceivedSubscriptionProvider(address));
  final client = ref.watch(viteClientProvider);

  var unreceived =
      await client.getUnreceivedTransactionSummaryByAddress(address);

  // FIXME - temporary workaround for unreceived txs from sendBlockList
  if (unreceived.blockCount == 0 && message.asData?.value.received == false) {
    await Future.delayed(const Duration(seconds: 2));
    unreceived = await client.getUnreceivedTransactionSummaryByAddress(address);
  }

  final log = ref.read(loggerProvider);
  log.d('UnreceivedInfo $unreceived');

  return unreceived;
});

final unreceivedProvider =
    Provider.autoDispose.family<AccountInfo, Address>((ref, address) {
  final cache = ref.read(_unreceivedCacheProvider(address));
  final remote = ref.watch(unreceivedRemoteProvider(address));

  final unreceivedInfo = remote.asData?.value;
  if (unreceivedInfo != null && unreceivedInfo != cache) {
    Future.delayed(Duration.zero, () {
      final log = ref.read(loggerProvider);
      log.d('Updating unreceived cache');

      final notifier = ref.read(_unreceivedCacheProvider(address).notifier);
      notifier.state = unreceivedInfo;
    });
  }

  return unreceivedInfo ?? cache;
});

final unreceivedBalanceForTokenProvider =
    Provider.autoDispose.family<BalanceInfo?, TokenId>((ref, tokenId) {
  final account = ref.watch(selectedAccountProvider);
  final unreceivedInfo = ref.watch(unreceivedProvider(account.address));
  return unreceivedInfo.balances[tokenId];
});
