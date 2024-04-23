import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vite/vite.dart';
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

  Future<void> connect({required String uri}) async {
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

  void onTxAction(VCTxRequest request, VCTxResponse response) {
    state.mapOrNull(connected: (value) {
      final id = request.id;
      response.when(
        confirmed: (accountBlock) {
          service.sendResult(id: id, result: accountBlock);
        },
        cancelled: () {
          service.sendError(id: id, error: VCError.userCanceled);
        },
      );

      final currentRequest = value.currentRequest;
      if (currentRequest?.id == id) {
        final pending = value.pendingRequests;
        final historyItem = VCHistoryItem.tx(
          request: request,
          response: response,
          timestamp: DateTime.now(),
        );
        state = value.copyWith(
          currentRequest: pending.firstOrNull,
          pendingRequests: pending.isEmpty ? pending : pending.removeAt(0),
          historyRequests: value.historyRequests.add(historyItem),
        );
      }
    });
  }

  void onSignAction(VCSignRequest request, VCSignResponse response) {
    state.mapOrNull(connected: (value) {
      final id = request.id;
      response.when(
        confirmed: (signedData) {
          service.sendResult(id: id, result: signedData);
        },
        cancelled: () {
          service.sendError(id: id, error: VCError.userCanceled);
        },
      );

      final currentRequest = value.currentRequest;
      if (currentRequest?.id == id) {
        final pending = value.pendingRequests;
        final historyItem = VCHistoryItem.sign(
          request: request,
          response: response,
          timestamp: DateTime.now(),
        );
        state = value.copyWith(
          currentRequest: pending.firstOrNull,
          pendingRequests: pending.isEmpty ? pending : pending.removeAt(0),
          historyRequests: value.historyRequests.add(historyItem),
        );
      }
    });
  }

  void onInvalidRequest(JsonRpcRequest request, Object error) {
    state.mapOrNull(connected: (value) {
      final id = request.id;
      service.sendError(id: id, error: VCError.requestRejected);

      final currentRequest = value.currentRequest;
      if (currentRequest?.id == id) {
        final pending = value.pendingRequests;
        final historyItem = VCHistoryItem.invalid(
          request: request,
          error: error,
          timestamp: DateTime.now(),
        );
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
          final txRequest = VCRequest.transaction(request);
          try {
            final block =
                request.params?.first['block'] as Map<String, dynamic>;
            block['blockType'] ??= BlockType.transferRequest.rawValue;
            final tx = RawTransaction.fromJson(block);
            if (tx.type.isReceiveType) {
              service.sendError(id: request.id, error: VCError.requestRejected);
              return;
            }
          } catch (_) {
            service.sendError(id: request.id, error: VCError.requestRejected);
            return;
          }
          if (prev.currentRequest == null) {
            state = prev.copyWith(currentRequest: txRequest);
          } else {
            state = prev.copyWith(
              pendingRequests: prev.pendingRequests.add(txRequest),
            );
          }
        });
      },
      signMessage: (request) {
        state.mapOrNull(connected: (prev) {
          final signRequest = VCRequest.signMessage(request);
          if (prev.currentRequest == null) {
            state = prev.copyWith(currentRequest: signRequest);
          } else {
            state = prev.copyWith(
              pendingRequests: prev.pendingRequests.add(signRequest),
            );
          }
        });
      },
    );
  }
}
