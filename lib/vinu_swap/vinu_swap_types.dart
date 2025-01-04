import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'vinu_swap_types.freezed.dart';
part 'vinu_swap_types.g.dart';

const kVinuSwapLastHeight = 24000;

const kVinuSwapTokenIdList = [
  'tti_541b25bd5e5db35166864096', // VINU
  'tti_5649544520544f4b454e6e40', // VITE
  'tti_faf113d9c8515bb0df0ab347', // VC
  'tti_80f3751485e4e83456059473', // USDT
  'tti_b90c9baffffc9dae58d1f33f', // BTC
  'tti_687d8a93915393b219212c73', // ETH
];

final kVinuToken = Token.parse('tti_541b25bd5e5db35166864096');

@freezed
class VinuSwapTokenCache with _$VinuSwapTokenCache {
  const factory VinuSwapTokenCache({
    @Default(IListConst(kVinuSwapTokenIdList)) IList<TokenId> tradingTokens,
    @Default(kVinuSwapLastHeight) int lastHeight,
  }) = _VinuSwapTokenCache;

  factory VinuSwapTokenCache.fromJson(Map<String, dynamic> json) =>
      _$VinuSwapTokenCacheFromJson(json);
}

@freezed
class VinuSwapSettings with _$VinuSwapSettings {
  const factory VinuSwapSettings({
    @Default(VinuSwapTokenCache()) VinuSwapTokenCache tokenCache,
    required TokenInfo fromToken,
    required TokenInfo toToken,
    @Default(0.005) double slippage,
  }) = _VinuSwapSettings;

  factory VinuSwapSettings.fromJson(Map<String, dynamic> json) =>
      _$VinuSwapSettingsFromJson(json);
}

@freezed
class VinuSwapState with _$VinuSwapState {
  const VinuSwapState._();
  const factory VinuSwapState({
    required Amount fromAmount,
    required Amount toAmount,
    required double slippage,
    required int requestId,
    required int callId,
  }) = _VinuSwapState;

  factory VinuSwapState.initial({
    required TokenInfo fromToken,
    required TokenInfo toToken,
    required double slippage,
  }) =>
      VinuSwapState(
        fromAmount: Amount.raw(BigInt.zero, tokenInfo: fromToken),
        toAmount: Amount.raw(BigInt.zero, tokenInfo: toToken),
        slippage: slippage,
        requestId: 0,
        callId: 0,
      );

  TokenInfo get fromToken => fromAmount.tokenInfo;
  TokenInfo get toToken => toAmount.tokenInfo;
}

@freezed
class LiquidityPool with _$LiquidityPool {
  const factory LiquidityPool({
    required BigInt total,
    required BigInt totalVinu,
    required BigInt k,
    required BigInt tokenSuply,
    required Token lpToken,
  }) = _LiquidityPool;

  factory LiquidityPool.fromList(List<Object> list) => LiquidityPool(
        total: list[0] as BigInt,
        totalVinu: list[1] as BigInt,
        k: list[2] as BigInt,
        tokenSuply: list[3] as BigInt,
        lpToken: list[4] as Token,
      );
}

@freezed
class VinuSwapEvent with _$VinuSwapEvent {
  const factory VinuSwapEvent.swap({
    required Address address,
    required Token fromToken,
    required Token toToken,
    required BigInt fromAmount,
    required BigInt toAmount,
  }) = _VinuSwapEventSwap;

  const factory VinuSwapEvent.swapInternal({
    required Address address,
    required Token fromToken,
    required Token toToken,
    required BigInt fromAmount,
    required BigInt toAmount,
    required BigInt total,
    required BigInt totalVite,
  }) = _VinuSwapEventSwapInternal;
}
