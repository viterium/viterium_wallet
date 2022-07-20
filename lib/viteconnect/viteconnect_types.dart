import 'dart:typed_data';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_converter/json_converter.dart';
import 'package:vite/vite.dart';
import 'package:viteconnect/viteconnect.dart';

import '../transactions/send_tx.dart';

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
    VCRequest? currentRequest,
    @Default(IListConst<VCRequest>([])) IList<VCRequest> pendingRequests,
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
class VCRequest with _$VCRequest {
  const VCRequest._();
  const factory VCRequest.transaction(JsonRpcRequest request) =
      _VCRequestTransaction;
  const factory VCRequest.signMessage(JsonRpcRequest request) =
      _VCRequestSignMessage;

  int get id => request.id;
}

@freezed
class VCTxRequest with _$VCTxRequest {
  const VCTxRequest._();
  const factory VCTxRequest({
    required int id,
    required SendTx tx,
  }) = _VCTxRequest;

  RawTransaction get transaction => tx.rawTx;
  TokenInfo get tokenInfo => tx.tokenInfo;
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
    required int id,
    required Uint8List data,
  }) = _VCSignRequest;
}

@freezed
class SignedData with _$SignedData {
  const factory SignedData({
    @Uint8ListBase64Converter() required Uint8List publicKey,
    @Uint8ListBase64Converter() required Uint8List signature,
  }) = _SignedData;

  factory SignedData.fromJson(Map<String, dynamic> json) =>
      _$SignedDataFromJson(json);
}

@freezed
class VCSignResponse with _$VCSignResponse {
  const factory VCSignResponse.confirmed(SignedData signedData) =
      _VCSignResponseConfirmed;
  const factory VCSignResponse.cancelled() = _VCSignResponseCancelled;
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
    required VCSignRequest request,
    required VCSignResponse response,
    required DateTime timestamp,
  }) = _VCHistoryItemSign;

  const factory VCHistoryItem.invalid({
    required JsonRpcRequest request,
    required Object error,
    required DateTime timestamp,
  }) = _VCHistoryItemInvalid;

  const factory VCHistoryItem.current({
    required VCRequest request,
  }) = _VCHistoryItemCurrent;
}

@freezed
class VCError with _$VCError {
  const factory VCError({
    required int code,
    String? message,
  }) = _VCError;

  static VCError userCanceled = VCError(code: 11012, message: 'User Cancelled');
  static VCError requestRejected =
      VCError(code: 11011, message: 'Request Rejected');
  static VCError sessionRejected =
      VCError(code: 11010, message: 'Session Rejected ');

  factory VCError.fromJson(Map<String, dynamic> json) =>
      _$VCErrorFromJson(json);
}
