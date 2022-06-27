import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:viteconnect/viteconnect.dart';

import '../accounts/account.dart';
import 'viteconnect_service.dart';
import 'viteconnect_types.dart';

class ViteConnectStateNotifier extends StateNotifier<VCState>
    implements ViteConnectDelegate {
  late ViteConnectService service;

  ViteConnectStateNotifier({
    required Account account,
    required PeerMeta clientMeta,
  }) : super(VCState.disconnected()) {
    service = ViteConnectService(
      delegate: this,
      address: account.viteAddress,
      clientMeta: clientMeta,
    );
  }

  Future<void> connect({
    required String uri,
  }) async {
    service.connect(uri: uri);
    final bridge = service.connector?.session.bridge;
    state = VCState.connectingToBridge(bridge ?? '');
  }

  Future<void> disconnect() async {
    await service.disconnect();
  }

  Future<void> approve(VCSessionRequest sessionRequest) async {
    state = VCState.connectingSession(sessionRequest);
    await service.approve();
  }

  void reject() {
    service.reject();
    state = VCState.disconnected();
  }

  Future<void> onUserResponse(
      VCTxRequest request, VCTxResponse response) async {
    state.mapOrNull(connected: (value) {
      final id = request.id;
      response.when(
        confirmed: (accountBlock) {
          service.sendResult(id: id, result: accountBlock);
        },
        cancelled: () {
          final error = {'code': 11012, 'message': 'User Canceled'};
          service.sendError(id: id, error: error);
        },
      );
      final currentRequest = value.currentRequest;
      final historyItem = VCHistoryItem.tx(
        request: request,
        response: response,
        timestamp: DateTime.now(),
      );
      if (currentRequest != null && currentRequest.id == id) {
        final pending = value.pendingRequests;
        state = value.copyWith(
          currentRequest: pending.firstOrNull,
          pendingRequests: pending.isEmpty ? pending : pending.removeAt(0),
          historyRequests: value.historyRequests.add(historyItem),
        );
      }
    });
  }

  @override
  Future<void> onEvent(VCEvent event) async {
    print(event);

    event.when(
      sessionRequest: (request) {
        state = VCState.pendingApproval(request);
      },
      connected: (status) {
        state = VCState.connected(
          sessionStatus: status,
          peerMeta: state.maybeWhen(
            connectingSession: (request) => request.peerMeta,
            orElse: () => null,
          ),
        );
      },
      disconnected: (message) async {
        await service.close();
        state = VCState.disconnected(message);
      },
      signAndSendTx: (request) {
        state.mapOrNull(connected: (prev) {
          if (prev.currentRequest == null) {
            state = prev.copyWith(currentRequest: request);
          } else {
            state = prev.copyWith(
              pendingRequests: prev.pendingRequests.add(request),
            );
          }
        });
      },
      signMessage: (request) {
        state.mapOrNull(connected: (prev) {
          if (prev.currentRequest == null) {
            state = prev.copyWith(currentRequest: request);
          } else {
            state = prev.copyWith(
              pendingRequests: prev.pendingRequests.add(request),
            );
          }
        });
      },
    );
  }
}
