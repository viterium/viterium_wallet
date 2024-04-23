import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vite/vite.dart';

part 'vitc_swap_types.freezed.dart';
part 'vitc_swap_types.g.dart';

const kVitcSwapLastHeight = 329800;

const kVitcSwapTokenIdList = [
  'tti_5649544520544f4b454e6e40',
  'tti_22d0b205bed4d268a05dfc3c',
  'tti_541b25bd5e5db35166864096',
  'tti_0dac12e0b866cf981a8e2d18',
  'tti_181e08c4fdb2876956245076',
  'tti_14559f510fa839880af467d1',
  'tti_80f3751485e4e83456059473',
  'tti_fb14e5b39124a833fec95fa9',
  'tti_29a2af20212b985e9d49e899',
  'tti_b3fbb46b9318b3d168ba904e',
  'tti_ea4d0148c620b9339d99e98e',
  'tti_564954455820434f494e69b5',
  'tti_a23c2f75791efafe5fada99e',
  'tti_ae7c9df2d83d9815424c5ecc',
  'tti_8364a003d3a2d3c22af015ec',
  'tti_c34069d833433fa25ae97441',
  'tti_f370fadb275bc2a1a839c753',
  'tti_72f4cbbed88a5902c78a896f',
  'tti_b90c9baffffc9dae58d1f33f',
  'tti_251a3e67a41b5ea2373936c8',
  'tti_be60188afdc771445b716ba7',
  'tti_0baed0d3ab3520d81eb04702',
  'tti_3340701118e8a54d34b52355',
  'tti_52c672080a7f5cdcb8addbdc',
  'tti_d63139ee766ed13aa25f0a4b',
  'tti_392a4a23e84f514608f0b3f0',
  'tti_52278701cf99308c8775337e',
  'tti_f7e187a151e9c74b81e87cce',
  'tti_3d1ed2b1151ed9bb64d51fee',
  'tti_fb901364ef662c25cf43125c',
  'tti_1ef6a8bef889022e0351886e',
  'tti_5c3e2df1729d8d402a8275b8',
  'tti_f446e57bcdb252282bdb8137',
  'tti_3eb2bbf86d2f5873b62452b0',
  'tti_b18e6488eeb30541da7f5010',
  'tti_2ebf3bd74d4895b0ee81257d',
];

@freezed
class VitcSwapTokenCache with _$VitcSwapTokenCache {
  const factory VitcSwapTokenCache({
    @Default(IListConst(kVitcSwapTokenIdList)) IList<TokenId> tradingTokens,
    @Default(kVitcSwapLastHeight) int lastHeight,
  }) = _VitcSwapTokenCache;

  factory VitcSwapTokenCache.fromJson(Map<String, dynamic> json) =>
      _$VitcSwapTokenCacheFromJson(json);
}

@freezed
class VitcSwapSettings with _$VitcSwapSettings {
  const factory VitcSwapSettings({
    @Default(VitcSwapTokenCache()) VitcSwapTokenCache tokenCache,
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

@freezed
class TokenLiquidity with _$TokenLiquidity {
  const factory TokenLiquidity({
    required BigInt total,
    required BigInt totalVite,
    required BigInt k,
    required BigInt tokenSupply,
    required Token lpToken,
  }) = _TokenLiquidity;

  factory TokenLiquidity.fromList(List<Object> list) => TokenLiquidity(
        total: list[0] as BigInt,
        totalVite: list[1] as BigInt,
        k: list[2] as BigInt,
        tokenSupply: list[3] as BigInt,
        lpToken: list[4] as Token,
      );
}

@freezed
class VitcSwapEvent with _$VitcSwapEvent {
  const factory VitcSwapEvent.swap({
    required Address address,
    required Token fromToken,
    required Token toToken,
    required BigInt fromAmount,
    required BigInt toAmount,
  }) = _VitcSwapEventSwap;

  const factory VitcSwapEvent.swapInternal({
    required Address address,
    required Token fromToken,
    required Token toToken,
    required BigInt fromAmount,
    required BigInt toAmount,
    required BigInt total,
    required BigInt totalVite,
  }) = _VitcSwapEventSwapInternal;

  const factory VitcSwapEvent.addLiquidity({
    required Address address,
    required Token token,
    required BigInt tokenAmount,
    required BigInt viteAmount,
    required BigInt tokenTotal,
    required BigInt viteTotal,
  }) = _VitcSwapEventAddLiquidity;

  const factory VitcSwapEvent.removeLiquidity({
    required Address address,
    required Token token,
    required BigInt tokenAmount,
    required BigInt viteAmount,
    required BigInt tokenTotal,
    required BigInt viteTotal,
  }) = _VitcSwapEventRemoveLiquidity;
}
