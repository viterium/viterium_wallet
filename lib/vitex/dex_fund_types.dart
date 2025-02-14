import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'dex_fund_types.freezed.dart';
part 'dex_fund_types.g.dart';

@freezed
class DexFundEvent with _$DexFundEvent {
  const factory DexFundEvent.transferAsset({
    // 1 deposit, 2 agentDeposit, 3 withdraw, 4 assignedWithdraw, 5 transfer
    required BigInt bizType,
    required Address from,
    required Address to,
    required Token token,
    required BigInt amount,
  }) = _DexFundEventTransferAsset;
}

@freezed
class AccountFundInfo with _$AccountFundInfo {
  const factory AccountFundInfo({
    required TokenInfo tokenInfo,
    required BigInt available,
    required BigInt locked,
    BigInt? vxLocked,
    BigInt? vxUnlocking,
    BigInt? cancellingStake,
  }) = _AccountFundInfo;

  factory AccountFundInfo.fromJson(Map<String, dynamic> json) =>
      _$AccountFundInfoFromJson(json);
}

@freezed
class PlaceOrderInfo with _$PlaceOrderInfo {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory PlaceOrderInfo({
    required String available,
    required String minTradeAmount,
    required int feeRate,
    required bool side,
  }) = _PlaceOrderInfo;

  factory PlaceOrderInfo.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderInfoFromJson(json);
}
