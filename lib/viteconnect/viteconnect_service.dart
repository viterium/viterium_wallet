import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import 'package:vite/core.dart';
import 'package:viteconnect/viteconnect.dart';

import 'viteconnect_types.dart';

typedef OnSessionRequest = bool Function(VCSessionRequest sessionRequest);

abstract class ViteConnectDelegate {
  Future<void> onEvent(VCEvent state);
}

class ViteConnectService implements SessionStorage {
  ViteConnectSession? session;
  final ViteAddress address;
  ViteConnect? connector;
  final PeerMeta clientMeta;

  final ViteConnectDelegate delegate;

  ViteConnectService({
    required this.delegate,
    required this.address,
    required this.clientMeta,
  });

  void _onSessionRequest(VCSessionRequest sessionRequest) {
    debugPrint('SessionRequest: $sessionRequest');
    delegate.onEvent(VCEvent.sessionRequest(sessionRequest));
  }

  void _onConnect(SessionStatus sessionStatus) {
    debugPrint('Connected: $sessionStatus');
    delegate.onEvent(VCEvent.connected(sessionStatus));
  }

  void _onDisconnect(Map<String, dynamic> map) {
    debugPrint('Disconnected: ${map['message']}');
    delegate.onEvent(
      VCEvent.disconnected(map['message']),
    );
  }

  void _onSignAndSendTx(JsonRpcRequest request) {
    debugPrint('SignAndSendTx: $request');
    delegate.onEvent(VCEvent.signAndSendTx(request));
  }

  void _onSignMessage(JsonRpcRequest request) {
    debugPrint('SignMessage: $request');
    delegate.onEvent(VCEvent.signMessage(request));
  }

  void connect({required String uri}) {
    final connector = ViteConnect(
      uri: uri,
      clientId: const Uuid().v4(),
      clientMeta: clientMeta,
      sessionStorage: this,
    );

    connector.on('session_request', _onSessionRequest);
    connector.on('connect', _onConnect);
    connector.on('disconnect', _onDisconnect);
    connector.on('vite_signAndSendTx', _onSignAndSendTx);
    connector.on('vite_signMessage', _onSignMessage);

    this.connector = connector;
  }

  Future<void> approve() async {
    await connector?.approveSession(accounts: [address]);
  }

  Future<void> reject() async {
    await connector?.rejectSession();
    await disconnect();
  }

  Future<void> sendResult({
    required int id,
    required Object result,
  }) async {
    await connector?.sendResponse(id: id, result: result);
  }

  Future<void> sendError({
    required int id,
    required Object error,
  }) async {
    await connector?.sendResponse(id: id, error: error);
  }

  Future<void> disconnect() async {
    debugPrint('disconnect');
    await connector?.killSession();
  }

  Future<void> close() async {
    debugPrint('close connection');
    await connector?.close(forceClose: true);
  }

  // SessionStorage
  Future<void> store(ViteConnectSession session) async {
    this.session = session;
  }

  Future<ViteConnectSession?> getSession() async {
    return session;
  }

  Future<void> removeSession() async {
    session = null;
  }
}
