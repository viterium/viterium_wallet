import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'vitc_swap_types.freezed.dart';
part 'vitc_swap_types.g.dart';

@freezed
class VitcSwapSettings with _$VitcSwapSettings {
  const factory VitcSwapSettings({
    @Default(IListConst([])) IList<TokenId> tradingTokens,
    required TokenInfo fromToken,
    required TokenInfo toToken,
    @Default(0.005) double slippage,
  }) = _VitcSwapSettings;

  factory VitcSwapSettings.fromJson(Map<String, dynamic> json) =>
      _$VitcSwapSettingsFromJson(json);
}

@freezed
class VitcSwapState with _$VitcSwapState {
  const VitcSwapState._();
  const factory VitcSwapState({
    required Amount fromAmount,
    required Amount toAmount,
    required double slippage,
    required int requestId,
    required int callId,
  }) = _VitcSwapState;

  factory VitcSwapState.initial({
    required TokenInfo fromToken,
    required TokenInfo toToken,
    required double slippage,
  }) =>
      VitcSwapState(
        fromAmount: Amount.raw(BigInt.zero, tokenInfo: fromToken),
        toAmount: Amount.raw(BigInt.zero, tokenInfo: toToken),
        slippage: slippage,
        requestId: 0,
        callId: 0,
      );

  TokenInfo get fromToken => fromAmount.tokenInfo;
  TokenInfo get toToken => toAmount.tokenInfo;
}
