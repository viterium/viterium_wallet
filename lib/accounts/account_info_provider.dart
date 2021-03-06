import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import '../core/generic_state_notifier.dart';
import '../tokens/token_order_notifier.dart';
import '../util/numberutil.dart';
import 'account.dart';

final _accountInfoBoxProvider = Provider.autoDispose((ref) {
  final boxKey = ref.watch(accountInfoBoxKeyProvider);

  final db = ref.watch(dbProvider);
  return db.getTypedBox<AccountInfo>(boxKey);
});

final _accountInfoCacheProvider =
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

final accountInfoRemoteProvider = FutureProvider.autoDispose
    .family<AccountInfo, Address>((ref, address) async {
  ref.watch(newAccountBlockProvider(address));
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

final accountInfoProvider = StateNotifierProvider.autoDispose
    .family<GenericStateNotifier<AccountInfo>, AccountInfo, Account>(
        (ref, account) {
  final cached = ref.watch(_accountInfoCacheProvider(account));
  final notifier = GenericStateNotifier<AccountInfo>(cached);

  ref.listen<AsyncValue<AccountInfo>>(
      accountInfoRemoteProvider(account.address), (_, accountInfo) {
    accountInfo.whenOrNull(
      data: (value) {
        // update cache
        final network = ref.read(viteNetworkProvider);
        final cacheBox = ref.read(_accountInfoBoxProvider);
        cacheBox.set('${account.index}#${network.index}', value);
        // update state notifier
        notifier.updateState(value);
      },
    );
  });

  ref.listen<AsyncValue<RpcAccountBlockWithHeightMessage>>(
      newAccountBlockProvider(account.address), (_, message) {
    message.whenOrNull(
      data: (_) {
        // account block changed so refresh account info
        ref.refresh(accountInfoRemoteProvider(account.address));
      },
    );
  });

  return notifier;
});

final balanceInfoForTokenProvider =
    Provider.autoDispose.family<BalanceInfo?, TokenId>((ref, tokenId) {
  final accountInfo = ref.watch(selectedAccountInfoProvider);
  return accountInfo.balances[tokenId];
});

final balanceForTokenProvider =
    Provider.autoDispose.family<BigInt, TokenId>((ref, tokenId) {
  final balanceInfo = ref.watch(balanceInfoForTokenProvider(tokenId));
  return balanceInfo?.balance ?? BigInt.zero;
});

final selectedAccountInfoProvider = Provider.autoDispose((ref) {
  final account = ref.watch(selectedAccountProvider);
  final accountInfo = ref.watch(accountInfoProvider(account));
  return accountInfo;
});

final tokenBalanceDisplayProvider =
    Provider.autoDispose.family<String, TokenId>((ref, tokenId) {
  final accountInfo = ref.watch(selectedAccountInfoProvider);
  final balance = accountInfo.balances[tokenId];
  if (balance == null) {
    return '0';
  }
  return NumberUtil.getStringFromRaw(
    balance.balance,
    balance.tokenInfo.decimals,
  );
});

final _tokenOrderKeyProvider = Provider.family<String, Account>((ref, account) {
  final network = ref.watch(viteNetworkProvider);
  final data = stringToBytesUtf8('${account.address}#${network.index}');
  return digest(data: data, digestSize: 8).hex;
});

final tokenOrderProvider =
    StateNotifierProvider.family<TokenOrderNotifier, IList<String>, Account>(
        (ref, account) {
  final repository = ref.watch(settingsRepositoryProvider);
  final key = ref.watch(_tokenOrderKeyProvider(account));
  return TokenOrderNotifier(repository, key);
});

final sortedBalancesForAccountProvider =
    Provider.autoDispose.family<IList<BalanceInfo>, Account>((ref, account) {
  final accountInfo = ref.watch(accountInfoProvider(account));
  final sortedIds = ref.watch(tokenOrderProvider(account));
  final remainingBalances = Map.of(accountInfo.balances);

  final balances = sortedIds.map((id) {
    remainingBalances.remove(id);
    return accountInfo.balances[id];
  });

  final sortedBalances = balances
      .where((balance) => balance != null)
      .cast<BalanceInfo>()
      .toIList()
      .addAll(remainingBalances.values);

  return sortedBalances;
});
