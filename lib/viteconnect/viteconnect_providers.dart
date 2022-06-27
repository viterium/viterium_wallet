import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:viteconnect/viteconnect.dart';

import '../app_providers.dart';
import 'viteconnect_notifier.dart';
import 'viteconnect_types.dart';

final viteConnectProvider =
    StateNotifierProvider.autoDispose<ViteConnectStateNotifier, VCState>((ref) {
  final account = ref.watch(selectedAccountProvider);
  final clientMeta = PeerMeta(
    name: 'Viterium',
    description: 'Viterium wallet',
    url: 'https://viterium.io',
  );

  final viteConnect = ViteConnectStateNotifier(
    account: account,
    clientMeta: clientMeta,
  );

  ref.onDispose(() {
    viteConnect.disconnect();
  });

  return viteConnect;
});

final viteConnectStatusProvider = Provider.autoDispose((ref) {
  final viteConnect = ref.watch(viteConnectProvider);
  return viteConnect.connected;
});

final viteConnectPeerProvider = Provider.autoDispose((ref) {
  final state = ref.watch(viteConnectProvider);
  return state.mapOrNull<PeerMeta?>(connected: (state) => state.peerMeta);
});

final viteConnectRequestHistoryProvider = Provider.autoDispose((ref) {
  final requests = ref.watch(
    viteConnectProvider.select(
      (value) => value.maybeMap(
        connected: (state) => state.historyRequests,
        orElse: () => const IListConst(<VCHistoryItem>[]),
      ),
    ),
  );
  return requests;
});
