import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../core/generic_state_notifier.dart';
import '../util/numberutil.dart';
import 'account.dart';

final _accountInfoBoxProvider = Provider.autoDispose((ref) {
  final boxKey = ref.watch(accountInfoBoxKeyProvider);

  final db = ref.watch(dbProvider);
  return db.getTypedBox<AccountInfo>(boxKey);
});

final accountInfoCacheProvider =
    Provider.autoDispose.family<AccountInfo, Account>((ref, account) {
  final network = ref.watch(viteNetworkProvider);
  final accountInfoBox = ref.watch(_accountInfoBoxProvider);
  final accountInfo = accountInfoBox.get(
    '${account.index}#${network.index}',
    defaultValue: AccountInfo(
      address: account.address,
      blockCount: 0,
      balances: {
        viteTokenId: BalanceInfo(
          tokenInfo: TokenInfo.vite,
          balance: BigInt.zero,
        ),
      },
    ),
  );

  return accountInfo;
});

final remoteAccountInfoProvider = FutureProvider.autoDispose
    .family<AccountInfo, Address>((ref, address) async {
  final client = ref.watch(viteClientProvider);
  final accountInfo = await client.getAccountInfo(address);

  if (accountInfo.balances.isEmpty) {
    return accountInfo.copyWith(
      balances: {
        viteTokenId: BalanceInfo(
          tokenInfo: TokenInfo.vite,
          balance: BigInt.zero,
        ),
      },
    );
  }

  return accountInfo;
});

final accountBalanceProvider = StateNotifierProvider.autoDispose
    .family<GenericStateNotifier<AccountInfo>, AccountInfo, Account>(
        (ref, account) {
  final cached = ref.read(accountInfoCacheProvider(account));
  final notifier = GenericStateNotifier<AccountInfo>(cached);

  ref.listen<AsyncValue<AccountInfo>>(
      remoteAccountInfoProvider(account.address), (_, next) {
    next.whenOrNull(data: (value) {
      // update cache
      final network = ref.read(viteNetworkProvider);
      final cacheBox = ref.read(_accountInfoBoxProvider);
      cacheBox.set('${account.index}#${network.index}', value);
      // update state notifier
      notifier.updateState(value);
    });
  });

  ref.listen<AsyncValue<RpcAccountBlockWithHeightMessage>>(
      newAccountBlockProvider(account.address), (_, next) {
    next.whenOrNull(data: (_) {
      // account block changed so refresh account info
      ref.refresh(remoteAccountInfoProvider(account.address));
    });
  });

  return notifier;
}, dependencies: [newAccountBlockProvider, remoteAccountInfoProvider]);

final balanceInfoForTokenProvider =
    Provider.autoDispose.family<BalanceInfo?, TokenId>((ref, tokenId) {
  final accountInfo = ref.watch(selectedAccountBalanceProvider);
  return accountInfo.balances[tokenId];
});

final balanceForTokenProvider =
    Provider.autoDispose.family<BigInt, TokenId>((ref, tokenId) {
  final balanceInfo = ref.watch(balanceInfoForTokenProvider(tokenId));
  return balanceInfo?.balance ?? BigInt.zero;
});

final selectedAccountBalanceProvider = Provider.autoDispose((ref) {
  final account = ref.watch(selectedAccountProvider);
  final accountInfo = ref.watch(accountBalanceProvider(account));
  return accountInfo;
});

final tokenBalanceDisplayProvider =
    Provider.autoDispose.family<String, TokenId>((ref, tokenId) {
  final accountInfo = ref.watch(selectedAccountBalanceProvider);
  final balance = accountInfo.balances[tokenId];
  if (balance == null) {
    return '0';
  }
  return NumberUtil.getRawAsUsableString(
    balance.balance,
    balance.tokenInfo.decimals,
  );
});
