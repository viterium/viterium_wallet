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
