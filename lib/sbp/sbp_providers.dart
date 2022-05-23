import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';

typedef SbpList = List<RpcSbpVoteInfo>;

final _sbpListStateProvider = StateProvider.autoDispose<SbpList>((ref) {
  return [];
});

final _fetchSbpListProvider = FutureProvider.autoDispose((ref) {
  ref.watch(consensusContractChanged);
  final client = ref.watch(rpcClientProvider);

  return client.getSbpVoteList();
});

final sbpListProvider = Provider.autoDispose<SbpList>((ref) {
  final state = ref.watch(_sbpListStateProvider);

  ref.listen<AsyncValue<SbpList>>(_fetchSbpListProvider, (_, next) {
    next.whenData((value) {
      final notifier = ref.read(_sbpListStateProvider.notifier);
      notifier.state = value;
    });
  }, onError: (error, stackTrace) {
    ref.read(loggerProvider).e('Failed to update SBP list', error, stackTrace);
  });

  return state;
});

final votedSbpProvider =
    FutureProvider.family.autoDispose<RpcVoteInfo?, Address>((ref, address) {
  final client = ref.watch(rpcClientProvider);
  ref.watch(consensusContractChanged);

  return client.getVotedSbp(address.viteAddress);
});

final consensusContractChanged = StreamProvider.autoDispose((ref) async* {
  final wsClient = ref.watch(wsRpcClientProvider);
  final controller = StreamController<RpcAccountBlockWithHeightMessage>();

  void callback(RpcFilterResponse response) async {
    final messages = response.typedMessages<RpcAccountBlockWithHeightMessage>();
    await Future.delayed(const Duration(seconds: 1));
    if (controller.isClosed) {
      return;
    }
    for (final message in messages) {
      controller.sink.add(message);
    }
  }

  final subscriptionId =
      await wsClient.subscribe.createAccountBlockSubscriptionByAddress(
    Contract.consensusContract.contractAddress,
    callback,
  );

  ref.onDispose(() {
    try {
      if (!controller.isClosed) {
        controller.close();
      }
      if (!wsClient.isClosed) {
        wsClient.unsubscribe(subscriptionId);
      }
    } catch (e) {
      ref.read(loggerProvider).e(e);
    }
  });

  yield* controller.stream;
});
