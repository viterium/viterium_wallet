import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';

import '../app_providers.dart';
import 'dex_fund_types.dart';
import 'vitex_extensions.dart';
import 'vitex_service.dart';

final dexFundEventProvider = StreamProvider.autoDispose((ref) async* {
  final client = ref.watch(wsViteClientProvider);
  final controller = StreamController<VmLogMessage>();

  void callback(CallbackParam response) {
    if (controller.isClosed) {
      return;
    }
    final vmLogs = response.typedMessages(VmLogMessage.fromJson);
    for (final vmLog in vmLogs) {
      controller.add(vmLog);
    }
  }

  final params = VmLogFilter(
    addressHeightRange: {dexFundContractAddress: HeightRange.latest},
  );
  final subscriptionId = await client.onNewVmLog(params, callback);

  ref.onDispose(() {
    try {
      if (!controller.isClosed) {
        controller.close();
      }
      if (!client.isClosed) {
        client.unsubscribe(subscriptionId);
      }
    } catch (e, st) {
      final log = ref.read(loggerProvider);
      log.e('Error on dispose dexFundEventProvider', e, st);
    }
  });

  yield* controller.stream;
});

final vitexAccountFundInfoProvider = FutureProvider.autoDispose((ref) async {
  final client = ref.watch(viteClientProvider);
  final address = ref.watch(selectedAddressProvider);

  // refresh on dex fund events
  ref.watch(dexFundEventProvider);

  try {
    return await client.getAccountFundInfo(address, null);
  } catch (_) {
    return <TokenId, AccountFundInfo>{};
  }
});

final vitexServiceProvider = Provider.autoDispose((ref) {
  final client = ref.watch(viteClientProvider);
  return VitexService(client: client);
});

final openOrdersProvider = FutureProvider.autoDispose((ref) async {
  final vitex = ref.watch(vitexServiceProvider);
  final address = ref.watch(selectedAddressProvider);
  final tradeToken = Token.parse('tti_b18e6488eeb30541da7f5010');
  final quoteToken = Token.vite;

  final orders = await vitex.getOrdersFromMarket(
    tradeToken: tradeToken,
    quoteToken: quoteToken,
  );

  final userOrders =
      orders.orders.where((order) => order.address == address).toList();
  return userOrders;
});
