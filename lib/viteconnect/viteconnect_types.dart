import 'dart:typed_data';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_converter/json_converter.dart';
import 'package:vite/vite.dart';
import 'package:viteconnect/viteconnect.dart';

part 'viteconnect_types.freezed.dart';
part 'viteconnect_types.g.dart';

@freezed
class VCEvent with _$VCEvent {
  const factory VCEvent.sessionRequest(VCSessionRequest sessionRequest) =
      _VCEventSessionRequest;
  const factory VCEvent.connected(SessionStatus sessionStatus) =
      _VCEventConnected;
  const factory VCEvent.disconnected([String? message]) = _VCEventDisconnected;

  const factory VCEvent.signAndSendTx(JsonRpcRequest request) =
      _VCEventSignEndSendTx;
  const factory VCEvent.signMessage(JsonRpcRequest request) =
      _VCEventSignMessage;
}

@freezed
class VCState with _$VCState {
  const VCState._();
  const factory VCState.connectingToBridge(String bridgeUri) =
      _VCStateConnectingServer;
  const factory VCState.pendingApproval(VCSessionRequest sessionRequest) =
      _VCStatePendingApproval;

  const factory VCState.connectingSession(VCSessionRequest sessionRequest) =
      _VCStateConnectingSession;
  const factory VCState.connected({
    required SessionStatus sessionStatus,
    PeerMeta? peerMeta,
    JsonRpcRequest? currentRequest,
    @Default(IListConst<JsonRpcRequest>([]))
        IList<JsonRpcRequest> pendingRequests,
    @Default(IListConst<VCHistoryItem>([]))
        IList<VCHistoryItem> historyRequests,
  }) = _VCStateConnected;
  const factory VCState.disconnected([String? message]) = _VCStateDisconnected;

  bool get connected => maybeMap(
        connected: (_) => true,
        orElse: () => false,
      );
}

@freezed
class VCTxRequest with _$VCTxRequest {
  const VCTxRequest._();
  const factory VCTxRequest({
    required int id,
    required Address address,
    required Address toAddress,
    required BigInt amount,
    required TokenInfo tokenInfo,
    BigInt? fee,
    required Uint8List data,
  }) = _VCTxRequest;

  factory VCTxRequest.parse(
    RawTransaction transaction, {
    required int id,
    required TokenInfo tokenInfo,
  }) {
    assert(transaction.address != null);
    assert(transaction.toAddress != null);
    assert(transaction.data != null);
    assert(transaction.toAddress!.isContractAddress);
    assert((transaction.token?.tokenId ?? viteTokenId) == tokenInfo.tokenId);

    return VCTxRequest(
      id: id,
      address: transaction.address!,
      toAddress: transaction.toAddress!,
      amount: transaction.amount ?? BigInt.zero,
      tokenInfo: tokenInfo,
      fee: transaction.fee,
      data: transaction.data!,
    );
  }

  static VCTxRequest? tryParse(
    RawTransaction transaction, {
    required int id,
    required TokenInfo tokenInfo,
  }) {
    try {
      return VCTxRequest.parse(
        transaction,
        id: id,
        tokenInfo: tokenInfo,
      );
    } catch (_) {
      return null;
    }
  }

  TokenId get tokenId => tokenInfo.tokenId;
}

@freezed
class VCTxResponse with _$VCTxResponse {
  const factory VCTxResponse.confirmed(AccountBlock accountBlock) =
      _VCTxResponseConfirmed;
  const factory VCTxResponse.cancelled() = _VCTxResponseCancelled;
}

@freezed
class VCSignRequest with _$VCSignRequest {
  const factory VCSignRequest({
    @Uint8ListBase64Converter() required Uint8List data,
  }) = _VCSignRequest;
}

@freezed
class VCSignResponse with _$VCSignResponse {
  const factory VCSignResponse({
    @Uint8ListBase64Converter() required Uint8List publicKey,
    @Uint8ListBase64Converter() required Uint8List signature,
  }) = _VCSignResponse;

  factory VCSignResponse.fromJson(Map<String, dynamic> json) =>
      _$VCSignResponseFromJson(json);
}

@freezed
class VCHistoryItem with _$VCHistoryItem {
  const VCHistoryItem._();
  const factory VCHistoryItem.tx({
    required VCTxRequest request,
    required VCTxResponse response,
    required DateTime timestamp,
  }) = _VCHistoryItemTx;
  const factory VCHistoryItem.sign({
    required DateTime timestamp,
  }) = _VCHistoryItemSign;
}
