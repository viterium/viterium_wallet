import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';

final _unreceivedStateProvider =
    StateProvider.autoDispose.family<AccountInfo, Address>((ref, address) {
  return AccountInfo(address: address, blockCount: 0);
});

final remoteUnreceivedProvider = FutureProvider.autoDispose
    .family<AccountInfo, Address>((ref, address) async {
  ref.watch(unreceivedSubscriptionProvider(address));
  final client = ref.watch(viteClientProvider);

  // FIXME - temporary workaround
  await Future.delayed(const Duration(seconds: 2));

  final unreceived =
      await client.getUnreceivedTransactionSummaryByAddress(address);

  ref.read(loggerProvider).d(unreceived);

  return unreceived;
});

final unreceivedProvider =
    Provider.autoDispose.family<AccountInfo, Address>((ref, address) {
  final state = ref.watch(_unreceivedStateProvider(address));
  final remote = ref.watch(remoteUnreceivedProvider(address));

  return remote.asData?.value ?? state;
});

final selectedUnreceivedInfoProvider = Provider.autoDispose((ref) {
  final account = ref.watch(selectedAccountProvider);
  final unreceivedInfo = ref.watch(unreceivedProvider(account.address));
  return unreceivedInfo;
});

final unreceivedBalanceInfoForTokenProvider =
    Provider.autoDispose.family<BalanceInfo?, TokenId>((ref, tokenId) {
  final accountInfo = ref.watch(selectedUnreceivedInfoProvider);
  return accountInfo.balances[tokenId];
});
