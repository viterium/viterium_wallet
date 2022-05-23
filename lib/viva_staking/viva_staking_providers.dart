import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'viva_staking_contract.dart';
import 'viva_staking_service.dart';
import 'viva_staking_types.dart';

final _vivaPoolsCacheProvider = StateProvider<List<VivaPoolInfo>>((ref) {
  return [];
});

final _vivaPoolsRemoteProvider =
    FutureProvider<List<VivaPoolInfo>>((ref) async {
  ref.watch(vivaEventProvider);
  final client = ref.watch(rpcClientProvider);
  final viteClient = ref.watch(viteClientProvider);

  final method = 'getAllPoolInfo';
  final abi = ContractAbi.fromJson(vivaStakingContract.abi);
  final encoded = abi.encodeOffchain(method, []);
  final data = encoded.toBase64;
  final params = RpcContractCallParams(
    address: vivaStakingContract.contractAddress,
    code: bytesToBase64(hexToBytes(vivaStakingContract.offchainCode)),
    data: data,
  );
  final result = await client.callOffchainMethod(params);
  final resultData = base64ToBytes(result);
  final decoded = abi.decodeOffchainOutput(method, resultData);
  final stakingIds = (decoded[0] as List).cast<Token>();
  final rewardIds = (decoded[1] as List).cast<Token>();
  final info = (decoded[2] as List).cast<BigInt>();
  final poolInfoList = <VivaPoolInfo>[];

  for (int i = 0; i < stakingIds.length; ++i) {
    final stakingTokenInfo =
        await viteClient.getTokenInfo(stakingIds[i].tokenId);
    final rewardsTokenInfo =
        await viteClient.getTokenInfo(rewardIds[i].tokenId);
    final poolInfo = VivaPoolInfo.fromList(
      [
        stakingTokenInfo,
        rewardsTokenInfo,
        ...info.sublist(i * 8, (i + 1) * 8),
        BigInt.from(i),
      ],
    );
    poolInfoList.add(poolInfo);
  }

  return poolInfoList;
});

final vivaPoolsProvider = Provider<List<VivaPoolInfo>>((ref) {
  final notifier = ref.watch(_vivaPoolsCacheProvider.notifier);
  final remote = ref.watch(_vivaPoolsRemoteProvider);

  remote.whenData((value) => notifier.state = value);

  return remote.value ?? notifier.state;
});

final vivaPoolsForTokenProvider = Provider.autoDispose
    .family<AsyncValue<List<VivaPoolInfo>>, TokenId>((ref, tokenId) {
  final pools = ref.watch(_vivaPoolsRemoteProvider);
  return pools.whenData((value) {
    return value.where((info) => info.stakingToken.tokenId == tokenId).toList();
  });
});

final vivaSelectedPoolIdProvider =
    StateProvider<BigInt>((ref) => throw UnimplementedError());

final vivaPoolInfoForPoolIdProvider =
    Provider.autoDispose.family<VivaPoolInfo?, BigInt>((ref, poolId) {
  final pools = ref.watch(vivaPoolsProvider);

  return pools[poolId.toInt()];
});

// VivaUserInfo providers

final _vivaUserInfoStateProvider =
    StateProvider.family<VivaUserInfo, BigInt>((ref, poolId) {
  return VivaUserInfo(
    stakingBalance: BigInt.zero,
    rewardDebt: BigInt.zero,
  );
});

final _vivaUserInfoRemoteProvider = FutureProvider.autoDispose
    .family<VivaUserInfo, BigInt>((ref, poolId) async {
  //final accountService = ref.watch(accountServiceProvider);
  ref.watch(vivaEventProvider);
  final client = ref.watch(rpcClientProvider);
  final account = ref.watch(selectedAccountProvider);

  final method = 'getUserInfo';
  final abi = vivaStakingContract.contractAbi;
  final encoded = abi.encodeOffchain(method, [poolId, account.address]);
  final data = bytesToBase64(encoded);
  final params = RpcContractCallParams(
    address: vivaStakingContract.contractAddress,
    code: bytesToBase64(hexToBytes(vivaStakingContract.offchainCode)),
    data: data,
  );

  final result = await client.callOffchainMethod(params);
  final resultData = base64ToBytes(result);
  final decoded = abi.decodeOffchainOutput(method, resultData);

  return VivaUserInfo.fromList(decoded);

  //return accountService.getVivaUserInfo(poolId, account.address);
});

final vivaUserInfoProvider =
    Provider.autoDispose.family<VivaUserInfo, BigInt>((ref, poolId) {
  final notifier = ref.watch(_vivaUserInfoStateProvider(poolId).notifier);
  final remote = ref.watch(_vivaUserInfoRemoteProvider(poolId));

  remote.whenData((value) {
    notifier.state = value;
  });

  return remote.asData?.value ?? notifier.state;
});

// VivaEvent

final vivaEventProvider = StreamProvider<RpcFilteredVmLog>((ref) async* {
  final wsClient = ref.watch(wsRpcClientProvider);
  final controller = StreamController<RpcFilteredVmLog>();

  void callback(RpcFilterResponse response) {
    if (controller.isClosed) {
      return;
    }
    final vmlogs = response.typedMessages<RpcFilteredVmLog>();
    for (final vmlog in vmlogs) {
      controller.sink.add(vmlog);
    }
  }

  final params = RpcFilterParam(addressHeightRange: {
    vivaStakingContract.contractAddress:
        RpcHeightRange(fromHeight: '0', toHeight: '0'),
  });
  final subscriptionId = await wsClient.subscribe
      .createVmLogSubscription(params, callback: callback);

  ref.onDispose(() {
    try {
      if (!controller.isClosed) {
        controller.close();
      }
      if (!wsClient.isClosed) {
        wsClient.unsubscribe(subscriptionId);
      }
    } catch (e, st) {
      ref.read(loggerProvider).e('Dispose viva event provider', e, st);
    }
  });

  yield* controller.stream;
});

final vivaStakingServiceProvider = Provider((ref) {
  return VivaStakingService(ref.read);
});
