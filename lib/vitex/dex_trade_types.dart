import 'dart:convert';
import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'dex_trade_types.freezed.dart';
part 'dex_trade_types.g.dart';

@freezed
class DexTradeEvent with _$DexTradeEvent {
  const factory DexTradeEvent.newOrder({
    required NewOrderInfo orderInfo,
  }) = _DexTradeEventNewOrder;

  const factory DexTradeEvent.orderUpdate({
    required Uint8List data,
  }) = _DexTradeEventOrderUpdate;

  const factory DexTradeEvent.transaction({
    required Uint8List data,
  }) = _DexTradeEventTransaction;
}

// DexOrder.status int
// Pending = 0; PartialExecuted = 1; FullyExecuted = 2; Cancelled = 3; NewFailed = 4

// DexOrder.cancelReason int
// cancelledByUser = 0
// cancelledByMarket
// cancelledOnTimeout
// partialExecutedUserCancelled
// partialExecutedCancelledByMarket
// partialExecutedCancelledOnTimeout
// unknownCancelledOnTimeout
// cancelledByPostOnlyMatched
// cancelledByFillOrKillNotFilled
// cancelledByExceedMarketOrderAmtThreshold

/// Converts bytes to BASE64-encoded String.
class Utf8StringBase64Converter implements JsonConverter<String, String> {
  final Base64Codec _codec;

  /// Converts bytes to BASE64-encoded String.
  const Utf8StringBase64Converter() : _codec = base64Url;

  /// Converts bytes to BASE64-encoded String with the URL-safe encoder.
  const Utf8StringBase64Converter.urlSafe() : _codec = base64Url;

  @override
  String fromJson(String json) => bytesToHex(_codec.decode(json));

  @override
  String toJson(String object) => _codec.encode(hexToBytes(object));
}

@freezed
class DexOrder with _$DexOrder {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory DexOrder({
    @Utf8StringBase64Converter() required String id,
    @Utf8StringBase64Converter() required Address address,
    required int marketId,
    required bool side,
    required int type,
    required Decimal price,
    required int takerFeeRate,
    required int makerFeeRate,
    required int takerOperatorFeeRate,
    required int makerOperatorFeeRate,
    required BigInt quantity,
    required BigInt amount,
    required int status,
    int? cancelReason,
    BigInt? executedQuantity,
    BigInt? executedAmount,
    BigInt? executedBaseFee,
    BigInt? executedOperatorFee,
    BigInt? refundToken,
    BigInt? refundQuantitu,
    required int timestamp,
    @Utf8StringBase64Converter() required Hash sendHash,
  }) = _DexOrder;

  factory DexOrder.fromJson(Map<String, dynamic> json) =>
      _$DexOrderFromJson(json);
}

@freezed
class NewOrderInfo with _$NewOrderInfo {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory NewOrderInfo({
    required DexOrder order,
    required Token tradeToken,
    required Token quoteToken,
  }) = _NewOrderInfo;

  factory NewOrderInfo.fromJson(Map<String, dynamic> json) =>
      _$NewOrderInfoFromJson(json);
}
